{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html

module Stratosphere.ResourceProperties.CloudTrailTrailDataResource where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudTrailTrailDataResource. See
-- 'cloudTrailTrailDataResource' for a more convenient constructor.
data CloudTrailTrailDataResource =
  CloudTrailTrailDataResource
  { _cloudTrailTrailDataResourceType :: Val Text
  , _cloudTrailTrailDataResourceValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudTrailTrailDataResource where
  toJSON CloudTrailTrailDataResource{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _cloudTrailTrailDataResourceType
    , fmap (("Values",) . toJSON) _cloudTrailTrailDataResourceValues
    ]

instance FromJSON CloudTrailTrailDataResource where
  parseJSON (Object obj) =
    CloudTrailTrailDataResource <$>
      (obj .: "Type") <*>
      (obj .:? "Values")
  parseJSON _ = mempty

-- | Constructor for 'CloudTrailTrailDataResource' containing required fields
-- as arguments.
cloudTrailTrailDataResource
  :: Val Text -- ^ 'cttdrType'
  -> CloudTrailTrailDataResource
cloudTrailTrailDataResource typearg =
  CloudTrailTrailDataResource
  { _cloudTrailTrailDataResourceType = typearg
  , _cloudTrailTrailDataResourceValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-type
cttdrType :: Lens' CloudTrailTrailDataResource (Val Text)
cttdrType = lens _cloudTrailTrailDataResourceType (\s a -> s { _cloudTrailTrailDataResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-values
cttdrValues :: Lens' CloudTrailTrailDataResource (Maybe (ValList Text))
cttdrValues = lens _cloudTrailTrailDataResourceValues (\s a -> s { _cloudTrailTrailDataResourceValues = a })
