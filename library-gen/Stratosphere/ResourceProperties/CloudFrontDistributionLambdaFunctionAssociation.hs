{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html

module Stratosphere.ResourceProperties.CloudFrontDistributionLambdaFunctionAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CloudFrontDistributionLambdaFunctionAssociation. See
-- 'cloudFrontDistributionLambdaFunctionAssociation' for a more convenient
-- constructor.
data CloudFrontDistributionLambdaFunctionAssociation =
  CloudFrontDistributionLambdaFunctionAssociation
  { _cloudFrontDistributionLambdaFunctionAssociationEventType :: Maybe (Val Text)
  , _cloudFrontDistributionLambdaFunctionAssociationLambdaFunctionARN :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionLambdaFunctionAssociation where
  toJSON CloudFrontDistributionLambdaFunctionAssociation{..} =
    object $
    catMaybes
    [ fmap (("EventType",) . toJSON) _cloudFrontDistributionLambdaFunctionAssociationEventType
    , fmap (("LambdaFunctionARN",) . toJSON) _cloudFrontDistributionLambdaFunctionAssociationLambdaFunctionARN
    ]

instance FromJSON CloudFrontDistributionLambdaFunctionAssociation where
  parseJSON (Object obj) =
    CloudFrontDistributionLambdaFunctionAssociation <$>
      (obj .:? "EventType") <*>
      (obj .:? "LambdaFunctionARN")
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionLambdaFunctionAssociation'
-- containing required fields as arguments.
cloudFrontDistributionLambdaFunctionAssociation
  :: CloudFrontDistributionLambdaFunctionAssociation
cloudFrontDistributionLambdaFunctionAssociation  =
  CloudFrontDistributionLambdaFunctionAssociation
  { _cloudFrontDistributionLambdaFunctionAssociationEventType = Nothing
  , _cloudFrontDistributionLambdaFunctionAssociationLambdaFunctionARN = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-eventtype
cfdlfaEventType :: Lens' CloudFrontDistributionLambdaFunctionAssociation (Maybe (Val Text))
cfdlfaEventType = lens _cloudFrontDistributionLambdaFunctionAssociationEventType (\s a -> s { _cloudFrontDistributionLambdaFunctionAssociationEventType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-lambdafunctionarn
cfdlfaLambdaFunctionARN :: Lens' CloudFrontDistributionLambdaFunctionAssociation (Maybe (Val Text))
cfdlfaLambdaFunctionARN = lens _cloudFrontDistributionLambdaFunctionAssociationLambdaFunctionARN (\s a -> s { _cloudFrontDistributionLambdaFunctionAssociationLambdaFunctionARN = a })
