<template>
  <div class="container">
    <div class="header">
      <img src="../assets/logo.png"
           alt="">
      <h2>我的购物车</h2><span>温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</span>
      <div class="user_name">admin</div>
    </div>
    <div class="line"></div>
    <div class="content"
         style="background-color: #f5f5f5;padding-top:30px">
      <el-table ref="multipleTable"
                :data="tableData"
                tooltip-effect="dark"
                style="width: 80%;margin:0px 10% 20px;"
                @selection-change="handleSelectionChange">
        <el-table-column type="selection"
                         width="55">
        </el-table-column>
        <el-table-column label="商品图"
                         width="100 ">
          <img style="display:inline-block;width:50px;height:60px"
               src="../assets/logo.png"
               alt="">
        </el-table-column>
        <el-table-column prop="name"
                         label="商品名称"
                         width="300">
        </el-table-column>
        <el-table-column prop="price"
                         label="单价">
        </el-table-column>
        <el-table-column prop="number"
                         label="数量">
        </el-table-column>
        <el-table-column prop="total"
                         label="小计">
        </el-table-column>
        <el-table-column label="操作">
          <el-button>X</el-button>
        </el-table-column>
      </el-table>
      <div class="pay">
        <a href="#">继续购物</a>
        <div class="count">共计：<span>8788</span>元</div>
        <el-button style="float:right;margin-right:-300px;background-color:#FF6600;color:white">立即结算</el-button>
      </div>
    </div>
    <ServiceBar />
    <Footer />
  </div>
</template>
<script>
import ServiceBar from '@/components/serviceBar.vue'
import Footer from '@/components/footer.vue'
export default {
  components: {
    ServiceBar,
    Footer
  },
  data () {
    return {
      tableData: [{
        name: '小米11',
        price: '4399',
        number: 2,
        total: 8798
      }],
      multipleSelection: []
    }
  },

  methods: {
    toggleSelection (rows) {
      if (rows) {
        rows.forEach(row => {
          this.$refs.multipleTable.toggleRowSelection(row);
        });
      } else {
        this.$refs.multipleTable.clearSelection();
      }
    },
    handleSelectionChange (val) {
      this.multipleSelection = val;
    }
  }
}
</script>
<style>
.container .header {
  background-color: white;
  position: relative;
  height: 100px;
  line-height: 60px;
}
.container .header img {
  display: inline-block;
  width: 60px;
  height: 50px;
  margin: 20px 0 0 140px;
}
.container .header h2 {
  display: inline-block;
  position: absolute;
  top: 20px;
  margin-left: 100px;
  font-size: 30px;
}
.container .header span {
  display: inline-block;
  position: absolute;
  top: 20px;
  margin-left: 300px;
  color: gray;
}
.container .header .user_name {
  float: right;
  margin-right: 100px;
}
.line {
  border-top: 2px solid #ec4848;
}
.pay {
  height: 150px;
  color: gray;
}
.pay a {
  display: inline-block;
  text-decoration: none;
  margin: 10px 0 0 200px;
}
.pay .count {
  float: right;
  color: #ec4848;
  margin-right: 400px;
  font-size: 24px;
}
.pay .count span {
  font-size: 30px;
}
</style>