package com.oracle.labor.po;

import java.util.ArrayList;
import java.util.List;

public class LdlscUserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public LdlscUserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(String value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(String value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(String value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(String value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(String value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLike(String value) {
            addCriterion("user_id like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotLike(String value) {
            addCriterion("user_id not like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<String> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<String> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(String value1, String value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(String value1, String value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserNameIsNull() {
            addCriterion("USER_NAME is null");
            return (Criteria) this;
        }

        public Criteria andUserNameIsNotNull() {
            addCriterion("USER_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andUserNameEqualTo(String value) {
            addCriterion("USER_NAME =", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotEqualTo(String value) {
            addCriterion("USER_NAME <>", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameGreaterThan(String value) {
            addCriterion("USER_NAME >", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameGreaterThanOrEqualTo(String value) {
            addCriterion("USER_NAME >=", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLessThan(String value) {
            addCriterion("USER_NAME <", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLessThanOrEqualTo(String value) {
            addCriterion("USER_NAME <=", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLike(String value) {
            addCriterion("USER_NAME like", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotLike(String value) {
            addCriterion("USER_NAME not like", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameIn(List<String> values) {
            addCriterion("USER_NAME in", values, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotIn(List<String> values) {
            addCriterion("USER_NAME not in", values, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameBetween(String value1, String value2) {
            addCriterion("USER_NAME between", value1, value2, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotBetween(String value1, String value2) {
            addCriterion("USER_NAME not between", value1, value2, "userName");
            return (Criteria) this;
        }

        public Criteria andUserloginnameIsNull() {
            addCriterion("USERLOGINNAME is null");
            return (Criteria) this;
        }

        public Criteria andUserloginnameIsNotNull() {
            addCriterion("USERLOGINNAME is not null");
            return (Criteria) this;
        }

        public Criteria andUserloginnameEqualTo(String value) {
            addCriterion("USERLOGINNAME =", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameNotEqualTo(String value) {
            addCriterion("USERLOGINNAME <>", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameGreaterThan(String value) {
            addCriterion("USERLOGINNAME >", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameGreaterThanOrEqualTo(String value) {
            addCriterion("USERLOGINNAME >=", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameLessThan(String value) {
            addCriterion("USERLOGINNAME <", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameLessThanOrEqualTo(String value) {
            addCriterion("USERLOGINNAME <=", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameLike(String value) {
            addCriterion("USERLOGINNAME like", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameNotLike(String value) {
            addCriterion("USERLOGINNAME not like", value, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameIn(List<String> values) {
            addCriterion("USERLOGINNAME in", values, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameNotIn(List<String> values) {
            addCriterion("USERLOGINNAME not in", values, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameBetween(String value1, String value2) {
            addCriterion("USERLOGINNAME between", value1, value2, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserloginnameNotBetween(String value1, String value2) {
            addCriterion("USERLOGINNAME not between", value1, value2, "userloginname");
            return (Criteria) this;
        }

        public Criteria andUserpasswordIsNull() {
            addCriterion("USERPASSWORD is null");
            return (Criteria) this;
        }

        public Criteria andUserpasswordIsNotNull() {
            addCriterion("USERPASSWORD is not null");
            return (Criteria) this;
        }

        public Criteria andUserpasswordEqualTo(String value) {
            addCriterion("USERPASSWORD =", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordNotEqualTo(String value) {
            addCriterion("USERPASSWORD <>", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordGreaterThan(String value) {
            addCriterion("USERPASSWORD >", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordGreaterThanOrEqualTo(String value) {
            addCriterion("USERPASSWORD >=", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordLessThan(String value) {
            addCriterion("USERPASSWORD <", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordLessThanOrEqualTo(String value) {
            addCriterion("USERPASSWORD <=", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordLike(String value) {
            addCriterion("USERPASSWORD like", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordNotLike(String value) {
            addCriterion("USERPASSWORD not like", value, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordIn(List<String> values) {
            addCriterion("USERPASSWORD in", values, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordNotIn(List<String> values) {
            addCriterion("USERPASSWORD not in", values, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordBetween(String value1, String value2) {
            addCriterion("USERPASSWORD between", value1, value2, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserpasswordNotBetween(String value1, String value2) {
            addCriterion("USERPASSWORD not between", value1, value2, "userpassword");
            return (Criteria) this;
        }

        public Criteria andUserindexIsNull() {
            addCriterion("USERINDEX is null");
            return (Criteria) this;
        }

        public Criteria andUserindexIsNotNull() {
            addCriterion("USERINDEX is not null");
            return (Criteria) this;
        }

        public Criteria andUserindexEqualTo(String value) {
            addCriterion("USERINDEX =", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexNotEqualTo(String value) {
            addCriterion("USERINDEX <>", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexGreaterThan(String value) {
            addCriterion("USERINDEX >", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexGreaterThanOrEqualTo(String value) {
            addCriterion("USERINDEX >=", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexLessThan(String value) {
            addCriterion("USERINDEX <", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexLessThanOrEqualTo(String value) {
            addCriterion("USERINDEX <=", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexLike(String value) {
            addCriterion("USERINDEX like", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexNotLike(String value) {
            addCriterion("USERINDEX not like", value, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexIn(List<String> values) {
            addCriterion("USERINDEX in", values, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexNotIn(List<String> values) {
            addCriterion("USERINDEX not in", values, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexBetween(String value1, String value2) {
            addCriterion("USERINDEX between", value1, value2, "userindex");
            return (Criteria) this;
        }

        public Criteria andUserindexNotBetween(String value1, String value2) {
            addCriterion("USERINDEX not between", value1, value2, "userindex");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}