#!/bin/bash
##get,put,post,delete 
  
  curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer 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" \
  https://api.github.com/user/repos \
  -d '{"name":"Hello-World","description":"This is your first repo via api!","homepage":"https://github.com","private":true}'


