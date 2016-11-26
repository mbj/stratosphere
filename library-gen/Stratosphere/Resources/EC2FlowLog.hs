{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html

module Stratosphere.Resources.EC2FlowLog where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2FlowLog. See 'ec2FlowLog' for a more
-- | convenient constructor.
data EC2FlowLog =
  EC2FlowLog
  { _eC2FlowLogDeliverLogsPermissionArn :: Val Text
  , _eC2FlowLogLogGroupName :: Val Text
  , _eC2FlowLogResourceId :: Val Text
  , _eC2FlowLogResourceType :: Val Text
  , _eC2FlowLogTrafficType :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2FlowLog where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON EC2FlowLog where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

-- | Constructor for 'EC2FlowLog' containing required fields as arguments.
ec2FlowLog
  :: Val Text -- ^ 'ecflDeliverLogsPermissionArn'
  -> Val Text -- ^ 'ecflLogGroupName'
  -> Val Text -- ^ 'ecflResourceId'
  -> Val Text -- ^ 'ecflResourceType'
  -> Val Text -- ^ 'ecflTrafficType'
  -> EC2FlowLog
ec2FlowLog deliverLogsPermissionArnarg logGroupNamearg resourceIdarg resourceTypearg trafficTypearg =
  EC2FlowLog
  { _eC2FlowLogDeliverLogsPermissionArn = deliverLogsPermissionArnarg
  , _eC2FlowLogLogGroupName = logGroupNamearg
  , _eC2FlowLogResourceId = resourceIdarg
  , _eC2FlowLogResourceType = resourceTypearg
  , _eC2FlowLogTrafficType = trafficTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-deliverlogspermissionarn
ecflDeliverLogsPermissionArn :: Lens' EC2FlowLog (Val Text)
ecflDeliverLogsPermissionArn = lens _eC2FlowLogDeliverLogsPermissionArn (\s a -> s { _eC2FlowLogDeliverLogsPermissionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-loggroupname
ecflLogGroupName :: Lens' EC2FlowLog (Val Text)
ecflLogGroupName = lens _eC2FlowLogLogGroupName (\s a -> s { _eC2FlowLogLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourceid
ecflResourceId :: Lens' EC2FlowLog (Val Text)
ecflResourceId = lens _eC2FlowLogResourceId (\s a -> s { _eC2FlowLogResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourcetype
ecflResourceType :: Lens' EC2FlowLog (Val Text)
ecflResourceType = lens _eC2FlowLogResourceType (\s a -> s { _eC2FlowLogResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-traffictype
ecflTrafficType :: Lens' EC2FlowLog (Val Text)
ecflTrafficType = lens _eC2FlowLogTrafficType (\s a -> s { _eC2FlowLogTrafficType = a })
