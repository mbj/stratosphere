
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroupFailoverCriteria
import Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroupMembers

-- | Full data type definition for CloudFrontDistributionOriginGroup. See
-- 'cloudFrontDistributionOriginGroup' for a more convenient constructor.
data CloudFrontDistributionOriginGroup =
  CloudFrontDistributionOriginGroup
  { _cloudFrontDistributionOriginGroupFailoverCriteria :: CloudFrontDistributionOriginGroupFailoverCriteria
  , _cloudFrontDistributionOriginGroupId :: Val Text
  , _cloudFrontDistributionOriginGroupMembers :: CloudFrontDistributionOriginGroupMembers
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionOriginGroup where
  toJSON CloudFrontDistributionOriginGroup{..} =
    object $
    catMaybes
    [ (Just . ("FailoverCriteria",) . toJSON) _cloudFrontDistributionOriginGroupFailoverCriteria
    , (Just . ("Id",) . toJSON) _cloudFrontDistributionOriginGroupId
    , (Just . ("Members",) . toJSON) _cloudFrontDistributionOriginGroupMembers
    ]

-- | Constructor for 'CloudFrontDistributionOriginGroup' containing required
-- fields as arguments.
cloudFrontDistributionOriginGroup
  :: CloudFrontDistributionOriginGroupFailoverCriteria -- ^ 'cfdogFailoverCriteria'
  -> Val Text -- ^ 'cfdogId'
  -> CloudFrontDistributionOriginGroupMembers -- ^ 'cfdogMembers'
  -> CloudFrontDistributionOriginGroup
cloudFrontDistributionOriginGroup failoverCriteriaarg idarg membersarg =
  CloudFrontDistributionOriginGroup
  { _cloudFrontDistributionOriginGroupFailoverCriteria = failoverCriteriaarg
  , _cloudFrontDistributionOriginGroupId = idarg
  , _cloudFrontDistributionOriginGroupMembers = membersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html#cfn-cloudfront-distribution-origingroup-failovercriteria
cfdogFailoverCriteria :: Lens' CloudFrontDistributionOriginGroup CloudFrontDistributionOriginGroupFailoverCriteria
cfdogFailoverCriteria = lens _cloudFrontDistributionOriginGroupFailoverCriteria (\s a -> s { _cloudFrontDistributionOriginGroupFailoverCriteria = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html#cfn-cloudfront-distribution-origingroup-id
cfdogId :: Lens' CloudFrontDistributionOriginGroup (Val Text)
cfdogId = lens _cloudFrontDistributionOriginGroupId (\s a -> s { _cloudFrontDistributionOriginGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html#cfn-cloudfront-distribution-origingroup-members
cfdogMembers :: Lens' CloudFrontDistributionOriginGroup CloudFrontDistributionOriginGroupMembers
cfdogMembers = lens _cloudFrontDistributionOriginGroupMembers (\s a -> s { _cloudFrontDistributionOriginGroupMembers = a })
