
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupmember.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroupMember where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionOriginGroupMember.
-- See 'cloudFrontDistributionOriginGroupMember' for a more convenient
-- constructor.
data CloudFrontDistributionOriginGroupMember =
  CloudFrontDistributionOriginGroupMember
  { _cloudFrontDistributionOriginGroupMemberOriginId :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionOriginGroupMember where
  toJSON CloudFrontDistributionOriginGroupMember{..} =
    object $
    catMaybes
    [ (Just . ("OriginId",) . toJSON) _cloudFrontDistributionOriginGroupMemberOriginId
    ]

-- | Constructor for 'CloudFrontDistributionOriginGroupMember' containing
-- required fields as arguments.
cloudFrontDistributionOriginGroupMember
  :: Val Text -- ^ 'cfdogmOriginId'
  -> CloudFrontDistributionOriginGroupMember
cloudFrontDistributionOriginGroupMember originIdarg =
  CloudFrontDistributionOriginGroupMember
  { _cloudFrontDistributionOriginGroupMemberOriginId = originIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupmember.html#cfn-cloudfront-distribution-origingroupmember-originid
cfdogmOriginId :: Lens' CloudFrontDistributionOriginGroupMember (Val Text)
cfdogmOriginId = lens _cloudFrontDistributionOriginGroupMemberOriginId (\s a -> s { _cloudFrontDistributionOriginGroupMemberOriginId = a })
