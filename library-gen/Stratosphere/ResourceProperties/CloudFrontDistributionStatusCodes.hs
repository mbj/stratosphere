
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-statuscodes.html

module Stratosphere.ResourceProperties.CloudFrontDistributionStatusCodes where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionStatusCodes. See
-- 'cloudFrontDistributionStatusCodes' for a more convenient constructor.
data CloudFrontDistributionStatusCodes =
  CloudFrontDistributionStatusCodes
  { _cloudFrontDistributionStatusCodesItems :: ValList Integer
  , _cloudFrontDistributionStatusCodesQuantity :: Val Integer
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionStatusCodes where
  toJSON CloudFrontDistributionStatusCodes{..} =
    object $
    catMaybes
    [ (Just . ("Items",) . toJSON) _cloudFrontDistributionStatusCodesItems
    , (Just . ("Quantity",) . toJSON) _cloudFrontDistributionStatusCodesQuantity
    ]

-- | Constructor for 'CloudFrontDistributionStatusCodes' containing required
-- fields as arguments.
cloudFrontDistributionStatusCodes
  :: ValList Integer -- ^ 'cfdscItems'
  -> Val Integer -- ^ 'cfdscQuantity'
  -> CloudFrontDistributionStatusCodes
cloudFrontDistributionStatusCodes itemsarg quantityarg =
  CloudFrontDistributionStatusCodes
  { _cloudFrontDistributionStatusCodesItems = itemsarg
  , _cloudFrontDistributionStatusCodesQuantity = quantityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-statuscodes.html#cfn-cloudfront-distribution-statuscodes-items
cfdscItems :: Lens' CloudFrontDistributionStatusCodes (ValList Integer)
cfdscItems = lens _cloudFrontDistributionStatusCodesItems (\s a -> s { _cloudFrontDistributionStatusCodesItems = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-statuscodes.html#cfn-cloudfront-distribution-statuscodes-quantity
cfdscQuantity :: Lens' CloudFrontDistributionStatusCodes (Val Integer)
cfdscQuantity = lens _cloudFrontDistributionStatusCodesQuantity (\s a -> s { _cloudFrontDistributionStatusCodesQuantity = a })
