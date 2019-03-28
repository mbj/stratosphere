{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeLogging where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeAccessLog

-- | Full data type definition for AppMeshVirtualNodeLogging. See
-- 'appMeshVirtualNodeLogging' for a more convenient constructor.
data AppMeshVirtualNodeLogging =
  AppMeshVirtualNodeLogging
  { _appMeshVirtualNodeLoggingAccessLog :: Maybe AppMeshVirtualNodeAccessLog
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeLogging where
  toJSON AppMeshVirtualNodeLogging{..} =
    object $
    catMaybes
    [ fmap (("AccessLog",) . toJSON) _appMeshVirtualNodeLoggingAccessLog
    ]

-- | Constructor for 'AppMeshVirtualNodeLogging' containing required fields as
-- arguments.
appMeshVirtualNodeLogging
  :: AppMeshVirtualNodeLogging
appMeshVirtualNodeLogging  =
  AppMeshVirtualNodeLogging
  { _appMeshVirtualNodeLoggingAccessLog = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html#cfn-appmesh-virtualnode-logging-accesslog
amvnlAccessLog :: Lens' AppMeshVirtualNodeLogging (Maybe AppMeshVirtualNodeAccessLog)
amvnlAccessLog = lens _appMeshVirtualNodeLoggingAccessLog (\s a -> s { _appMeshVirtualNodeLoggingAccessLog = a })
