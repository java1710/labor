package com.oracle.labor.dao;

import com.oracle.labor.po.LdlscUser;
import com.oracle.labor.po.LdlscUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LdlscUserMapper {
    long countByExample(LdlscUserExample example);

    int deleteByExample(LdlscUserExample example);

    int deleteByPrimaryKey(String userId);

    int insert(LdlscUser record);

    int insertSelective(LdlscUser record);

    List<LdlscUser> selectByExample(LdlscUserExample example);

    LdlscUser selectByPrimaryKey(String userId);

    int updateByExampleSelective(@Param("record") LdlscUser record, @Param("example") LdlscUserExample example);

    int updateByExample(@Param("record") LdlscUser record, @Param("example") LdlscUserExample example);

    int updateByPrimaryKeySelective(LdlscUser record);

    int updateByPrimaryKey(LdlscUser record);
}