{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html

module Stratosphere.Resources.EC2FlowLog where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2FlowLog. See 'ec2FlowLog' for a more
-- convenient constructor.
data EC2FlowLog =
  EC2FlowLog
  { _eC2FlowLogDeliverLogsPermissionArn :: Maybe (Val Text)
  , _eC2FlowLogLogDestination :: Maybe (Val Text)
  , _eC2FlowLogLogDestinationType :: Maybe (Val Text)
  , _eC2FlowLogLogFormat :: Maybe (Val Text)
  , _eC2FlowLogLogGroupName :: Maybe (Val Text)
  , _eC2FlowLogMaxAggregationInterval :: Maybe (Val Integer)
  , _eC2FlowLogResourceId :: Val Text
  , _eC2FlowLogResourceType :: Val Text
  , _eC2FlowLogTags :: Maybe [Tag]
  , _eC2FlowLogTrafficType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2FlowLog where
  toResourceProperties EC2FlowLog{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::FlowLog"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DeliverLogsPermissionArn",) . toJSON) _eC2FlowLogDeliverLogsPermissionArn
        , fmap (("LogDestination",) . toJSON) _eC2FlowLogLogDestination
        , fmap (("LogDestinationType",) . toJSON) _eC2FlowLogLogDestinationType
        , fmap (("LogFormat",) . toJSON) _eC2FlowLogLogFormat
        , fmap (("LogGroupName",) . toJSON) _eC2FlowLogLogGroupName
        , fmap (("MaxAggregationInterval",) . toJSON) _eC2FlowLogMaxAggregationInterval
        , (Just . ("ResourceId",) . toJSON) _eC2FlowLogResourceId
        , (Just . ("ResourceType",) . toJSON) _eC2FlowLogResourceType
        , fmap (("Tags",) . toJSON) _eC2FlowLogTags
        , (Just . ("TrafficType",) . toJSON) _eC2FlowLogTrafficType
        ]
    }

-- | Constructor for 'EC2FlowLog' containing required fields as arguments.
ec2FlowLog
  :: Val Text -- ^ 'ecflResourceId'
  -> Val Text -- ^ 'ecflResourceType'
  -> Val Text -- ^ 'ecflTrafficType'
  -> EC2FlowLog
ec2FlowLog resourceIdarg resourceTypearg trafficTypearg =
  EC2FlowLog
  { _eC2FlowLogDeliverLogsPermissionArn = Nothing
  , _eC2FlowLogLogDestination = Nothing
  , _eC2FlowLogLogDestinationType = Nothing
  , _eC2FlowLogLogFormat = Nothing
  , _eC2FlowLogLogGroupName = Nothing
  , _eC2FlowLogMaxAggregationInterval = Nothing
  , _eC2FlowLogResourceId = resourceIdarg
  , _eC2FlowLogResourceType = resourceTypearg
  , _eC2FlowLogTags = Nothing
  , _eC2FlowLogTrafficType = trafficTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-deliverlogspermissionarn
ecflDeliverLogsPermissionArn :: Lens' EC2FlowLog (Maybe (Val Text))
ecflDeliverLogsPermissionArn = lens _eC2FlowLogDeliverLogsPermissionArn (\s a -> s { _eC2FlowLogDeliverLogsPermissionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-logdestination
ecflLogDestination :: Lens' EC2FlowLog (Maybe (Val Text))
ecflLogDestination = lens _eC2FlowLogLogDestination (\s a -> s { _eC2FlowLogLogDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-logdestinationtype
ecflLogDestinationType :: Lens' EC2FlowLog (Maybe (Val Text))
ecflLogDestinationType = lens _eC2FlowLogLogDestinationType (\s a -> s { _eC2FlowLogLogDestinationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-logformat
ecflLogFormat :: Lens' EC2FlowLog (Maybe (Val Text))
ecflLogFormat = lens _eC2FlowLogLogFormat (\s a -> s { _eC2FlowLogLogFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-loggroupname
ecflLogGroupName :: Lens' EC2FlowLog (Maybe (Val Text))
ecflLogGroupName = lens _eC2FlowLogLogGroupName (\s a -> s { _eC2FlowLogLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-maxaggregationinterval
ecflMaxAggregationInterval :: Lens' EC2FlowLog (Maybe (Val Integer))
ecflMaxAggregationInterval = lens _eC2FlowLogMaxAggregationInterval (\s a -> s { _eC2FlowLogMaxAggregationInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourceid
ecflResourceId :: Lens' EC2FlowLog (Val Text)
ecflResourceId = lens _eC2FlowLogResourceId (\s a -> s { _eC2FlowLogResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourcetype
ecflResourceType :: Lens' EC2FlowLog (Val Text)
ecflResourceType = lens _eC2FlowLogResourceType (\s a -> s { _eC2FlowLogResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-tags
ecflTags :: Lens' EC2FlowLog (Maybe [Tag])
ecflTags = lens _eC2FlowLogTags (\s a -> s { _eC2FlowLogTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-traffictype
ecflTrafficType :: Lens' EC2FlowLog (Val Text)
ecflTrafficType = lens _eC2FlowLogTrafficType (\s a -> s { _eC2FlowLogTrafficType = a })
