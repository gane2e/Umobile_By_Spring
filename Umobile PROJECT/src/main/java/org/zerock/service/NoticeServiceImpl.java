package org.zerock.service;

import org.zerock.mapper.NoticeMapper;
//import com.board.model.BoardVO;
import org.zerock.domain.NoticeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper mapper;
    
    @Override
    public void create(NoticeVO notice) {
        mapper.create(notice);
    }

    @Override
    public NoticeVO read(Long nno) {
        return mapper.read(nno);
    }

    @Override
    public void update(NoticeVO notice) {
        mapper.update(notice);
    }

    @Override
    public void delete(Long nno) {
        mapper.delete(nno);
    }

    @Override
    public List<NoticeVO> getAll() {
        return mapper.getAll();
    }

    @Override
    public List<NoticeVO> getAllWithPaging(int offset, int limit) {
        return mapper.getAllWithPaging(offset, limit);
    }

    @Override
    public int getTotalCount() {
        return mapper.getTotalCount();
    }
    
    @Override
    public List<NoticeVO> searchPosts(String keyword, int offset, int limit) {
        return mapper.searchPosts(keyword, offset, limit);
    }
    
    @Override
    public List<NoticeVO> getRecentNotices(int limit) {
        return mapper.fetchRecentNotices(limit);
    }
}
