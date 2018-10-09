<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${BasePackageName}${DaoPackageName}.${ClassName}Dao">

    <sql id="${EntityName}Columns">
        ${ColumnMap}
    </sql>

    <sql id="${EntityName}Joins">
        ${Joins}
    </sql>

    <select id="findList" resultType="${BasePackageName}${EntityPackageName}.${ClassName}">
        SELECT
        <include refid="${EntityName}Columns" />
        FROM ${TableName} <include refid="${EntityName}Joins" />
        <where>
            <#-- AND ${TableName}.name LIKE concat('%',#{name},'%')-->
        </where>
    </select>

    <select id="findAllList" resultType="${BasePackageName}${EntityPackageName}.${ClassName}">
        SELECT
        <include refid="${EntityName}Columns" />
        FROM ${TableName} <include refid="${EntityName}Joins" />
        <where>
        </where>
    </select>

    <insert id="insert">
        INSERT INTO ${TableName}(
            ${InsertProperties})
        VALUES (
            ${InsertValues})
    </insert>

    <update id="update">
        UPDATE ${TableName} SET
        ${UpdateProperties}
        WHERE id = ${WhereId}
    </update>

    <update id="delete">
        DELETE FROM ${TableName}
        WHERE id = ${WhereId}
    </update>

</mapper>