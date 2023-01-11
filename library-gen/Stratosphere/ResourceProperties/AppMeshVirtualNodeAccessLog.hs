
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-accesslog.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeAccessLog where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeFileAccessLog

-- | Full data type definition for AppMeshVirtualNodeAccessLog. See
-- 'appMeshVirtualNodeAccessLog' for a more convenient constructor.
data AppMeshVirtualNodeAccessLog =
  AppMeshVirtualNodeAccessLog
  { _appMeshVirtualNodeAccessLogFile :: Maybe AppMeshVirtualNodeFileAccessLog
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeAccessLog where
  toJSON AppMeshVirtualNodeAccessLog{..} =
    object $
    catMaybes
    [ fmap (("File",) . toJSON) _appMeshVirtualNodeAccessLogFile
    ]

-- | Constructor for 'AppMeshVirtualNodeAccessLog' containing required fields
-- as arguments.
appMeshVirtualNodeAccessLog
  :: AppMeshVirtualNodeAccessLog
appMeshVirtualNodeAccessLog  =
  AppMeshVirtualNodeAccessLog
  { _appMeshVirtualNodeAccessLogFile = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-accesslog.html#cfn-appmesh-virtualnode-accesslog-file
amvnalFile :: Lens' AppMeshVirtualNodeAccessLog (Maybe AppMeshVirtualNodeFileAccessLog)
amvnalFile = lens _appMeshVirtualNodeAccessLogFile (\s a -> s { _appMeshVirtualNodeAccessLogFile = a })
