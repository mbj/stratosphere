
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupmembers.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroupMembers where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroupMember

-- | Full data type definition for CloudFrontDistributionOriginGroupMembers.
-- See 'cloudFrontDistributionOriginGroupMembers' for a more convenient
-- constructor.
data CloudFrontDistributionOriginGroupMembers =
  CloudFrontDistributionOriginGroupMembers
  { _cloudFrontDistributionOriginGroupMembersItems :: [CloudFrontDistributionOriginGroupMember]
  , _cloudFrontDistributionOriginGroupMembersQuantity :: Val Integer
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionOriginGroupMembers where
  toJSON CloudFrontDistributionOriginGroupMembers{..} =
    object $
    catMaybes
    [ (Just . ("Items",) . toJSON) _cloudFrontDistributionOriginGroupMembersItems
    , (Just . ("Quantity",) . toJSON) _cloudFrontDistributionOriginGroupMembersQuantity
    ]

-- | Constructor for 'CloudFrontDistributionOriginGroupMembers' containing
-- required fields as arguments.
cloudFrontDistributionOriginGroupMembers
  :: [CloudFrontDistributionOriginGroupMember] -- ^ 'cfdogmItems'
  -> Val Integer -- ^ 'cfdogmQuantity'
  -> CloudFrontDistributionOriginGroupMembers
cloudFrontDistributionOriginGroupMembers itemsarg quantityarg =
  CloudFrontDistributionOriginGroupMembers
  { _cloudFrontDistributionOriginGroupMembersItems = itemsarg
  , _cloudFrontDistributionOriginGroupMembersQuantity = quantityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupmembers.html#cfn-cloudfront-distribution-origingroupmembers-items
cfdogmItems :: Lens' CloudFrontDistributionOriginGroupMembers [CloudFrontDistributionOriginGroupMember]
cfdogmItems = lens _cloudFrontDistributionOriginGroupMembersItems (\s a -> s { _cloudFrontDistributionOriginGroupMembersItems = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupmembers.html#cfn-cloudfront-distribution-origingroupmembers-quantity
cfdogmQuantity :: Lens' CloudFrontDistributionOriginGroupMembers (Val Integer)
cfdogmQuantity = lens _cloudFrontDistributionOriginGroupMembersQuantity (\s a -> s { _cloudFrontDistributionOriginGroupMembersQuantity = a })
