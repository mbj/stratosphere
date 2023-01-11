
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroups.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroups where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroup

-- | Full data type definition for CloudFrontDistributionOriginGroups. See
-- 'cloudFrontDistributionOriginGroups' for a more convenient constructor.
data CloudFrontDistributionOriginGroups =
  CloudFrontDistributionOriginGroups
  { _cloudFrontDistributionOriginGroupsItems :: Maybe [CloudFrontDistributionOriginGroup]
  , _cloudFrontDistributionOriginGroupsQuantity :: Val Integer
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionOriginGroups where
  toJSON CloudFrontDistributionOriginGroups{..} =
    object $
    catMaybes
    [ fmap (("Items",) . toJSON) _cloudFrontDistributionOriginGroupsItems
    , (Just . ("Quantity",) . toJSON) _cloudFrontDistributionOriginGroupsQuantity
    ]

-- | Constructor for 'CloudFrontDistributionOriginGroups' containing required
-- fields as arguments.
cloudFrontDistributionOriginGroups
  :: Val Integer -- ^ 'cfdogQuantity'
  -> CloudFrontDistributionOriginGroups
cloudFrontDistributionOriginGroups quantityarg =
  CloudFrontDistributionOriginGroups
  { _cloudFrontDistributionOriginGroupsItems = Nothing
  , _cloudFrontDistributionOriginGroupsQuantity = quantityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroups.html#cfn-cloudfront-distribution-origingroups-items
cfdogItems :: Lens' CloudFrontDistributionOriginGroups (Maybe [CloudFrontDistributionOriginGroup])
cfdogItems = lens _cloudFrontDistributionOriginGroupsItems (\s a -> s { _cloudFrontDistributionOriginGroupsItems = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroups.html#cfn-cloudfront-distribution-origingroups-quantity
cfdogQuantity :: Lens' CloudFrontDistributionOriginGroups (Val Integer)
cfdogQuantity = lens _cloudFrontDistributionOriginGroupsQuantity (\s a -> s { _cloudFrontDistributionOriginGroupsQuantity = a })
