package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession SqlSession;


    public int insertBoard(BoardVO vo) {
        int result = SqlSession.insert("Board.insertBoard",vo);
        return result;
    }


    public BoardVO getBoard(int seq) {
       BoardVO one = SqlSession.selectOne("Board.getBoard",seq);
       return one;
    }

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = SqlSession.selectList("Board.getBoardList");
        return list;
    }



//    public int deleteBoard(int seq) {
//        String sql = "DELETE FROM BOARD WHERE seq=?";
//        return jdbcTemplate.update(sql, seq);
//    }
//
//    public int updateBoard(BoardVO vo) {
//        String sql = "UPDATE BOARD SET category=?, title=?, writer=?, content=?, editdate=? WHERE seq=?";
//        return jdbcTemplate.update(sql, vo.getCategory(), vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getEditdate(), vo.getSeq());
//    }



    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setCategory(rs.getString("category"));
            vo.setTitle(rs.getString("title"));
            vo.setWriter(rs.getString("writer"));
            vo.setContent(rs.getString("content"));
            vo.setRegdate(rs.getDate("regdate"));
            vo.setEditdate(rs.getDate("editdate"));
            vo.setCnt(rs.getInt("cnt"));
            return vo;
        }
    }

}
