const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"工作人员管理",
                        "menuJump":"列表",
                        "tableName":"gongzuo"
                    }
                ],
                "menu":"工作人员管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "审核",
			                "报表",
			                "删除"
			            ],
			            "menu":"文物管理",
			            "menuJump":"列表",
			            "tableName":"wenwu"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "修改",
			                "删除"
			            ],
			            "menu":"文物留言管理",
			            "menuJump":"列表",
			            "tableName":"wenwuLiuyan"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "删除"
			            ],
			            "menu":"文物收藏管理",
			            "menuJump":"列表",
			            "tableName":"wenwuCollection"
			        }
			    ],
			    "menu":"文物管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"公告类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"文物类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryWenwu"
			        }
			    ],
			    "menu":"基础数据管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"论坛管理",
			            "menuJump":"列表",
			            "tableName":"forum"
			        }
			    ],
			    "menu":"论坛管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告资讯管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告资讯管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
            /*,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"数据备份",
			            "menuJump":"列表",
			            "tableName":"beifen"
			        },
					{
					    "buttons":[
					        "查看"
					    ],
					    "menu":"数据还原",
					    "menuJump":"列表",
					    "tableName":"huanyuan"
					}
			    ],
			    "menu":"数据库管理"
			}*/
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
	{
	    "backMenu":[
	        {
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "审核",
			                "报表"
			            ],
			            "menu":"文物管理",
			            "menuJump":"列表",
			            "tableName":"wenwu"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "修改"
			            ],
			            "menu":"文物留言管理",
			            "menuJump":"列表",
			            "tableName":"wenwuLiuyan"
			        }
			        ,
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"文物收藏管理",
			            "menuJump":"列表",
			            "tableName":"wenwuCollection"
			        }
			    ],
			    "menu":"文物管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除"
			            ],
			            "menu":"论坛管理",
			            "menuJump":"列表",
			            "tableName":"forum"
			        }
			    ],
			    "menu":"论坛管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"公告资讯管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"公告资讯管理"
	        }
	    ],
	    "frontMenu":[],
	    "hasBackLogin":"是",
	    "hasBackRegister":"否",
	    "hasFrontLogin":"否",
	    "hasFrontRegister":"否",
	    "roleName":"工作人员",
	    "tableName":"gongzuo"
	}
]
    }
}
export default menu;
