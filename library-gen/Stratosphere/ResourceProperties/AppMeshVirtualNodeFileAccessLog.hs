
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeFileAccessLog where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualNodeFileAccessLog. See
-- 'appMeshVirtualNodeFileAccessLog' for a more convenient constructor.
data AppMeshVirtualNodeFileAccessLog =
  AppMeshVirtualNodeFileAccessLog
  { _appMeshVirtualNodeFileAccessLogPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeFileAccessLog where
  toJSON AppMeshVirtualNodeFileAccessLog{..} =
    object $
    catMaybes
    [ (Just . ("Path",) . toJSON) _appMeshVirtualNodeFileAccessLogPath
    ]

-- | Constructor for 'AppMeshVirtualNodeFileAccessLog' containing required
-- fields as arguments.
appMeshVirtualNodeFileAccessLog
  :: Val Text -- ^ 'amvnfalPath'
  -> AppMeshVirtualNodeFileAccessLog
appMeshVirtualNodeFileAccessLog patharg =
  AppMeshVirtualNodeFileAccessLog
  { _appMeshVirtualNodeFileAccessLogPath = patharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html#cfn-appmesh-virtualnode-fileaccesslog-path
amvnfalPath :: Lens' AppMeshVirtualNodeFileAccessLog (Val Text)
amvnfalPath = lens _appMeshVirtualNodeFileAccessLogPath (\s a -> s { _appMeshVirtualNodeFileAccessLogPath = a })
