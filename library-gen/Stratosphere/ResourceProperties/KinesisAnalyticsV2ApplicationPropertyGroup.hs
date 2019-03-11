{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-propertygroup.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationPropertyGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for KinesisAnalyticsV2ApplicationPropertyGroup.
-- See 'kinesisAnalyticsV2ApplicationPropertyGroup' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationPropertyGroup =
  KinesisAnalyticsV2ApplicationPropertyGroup
  { _kinesisAnalyticsV2ApplicationPropertyGroupPropertyGroupId :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationPropertyGroupPropertyMap :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationPropertyGroup where
  toJSON KinesisAnalyticsV2ApplicationPropertyGroup{..} =
    object $
    catMaybes
    [ fmap (("PropertyGroupId",) . toJSON) _kinesisAnalyticsV2ApplicationPropertyGroupPropertyGroupId
    , fmap (("PropertyMap",) . toJSON) _kinesisAnalyticsV2ApplicationPropertyGroupPropertyMap
    ]

instance FromJSON KinesisAnalyticsV2ApplicationPropertyGroup where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationPropertyGroup <$>
      (obj .:? "PropertyGroupId") <*>
      (obj .:? "PropertyMap")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationPropertyGroup' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationPropertyGroup
  :: KinesisAnalyticsV2ApplicationPropertyGroup
kinesisAnalyticsV2ApplicationPropertyGroup  =
  KinesisAnalyticsV2ApplicationPropertyGroup
  { _kinesisAnalyticsV2ApplicationPropertyGroupPropertyGroupId = Nothing
  , _kinesisAnalyticsV2ApplicationPropertyGroupPropertyMap = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-propertygroup.html#cfn-kinesisanalyticsv2-application-propertygroup-propertygroupid
kavapgPropertyGroupId :: Lens' KinesisAnalyticsV2ApplicationPropertyGroup (Maybe (Val Text))
kavapgPropertyGroupId = lens _kinesisAnalyticsV2ApplicationPropertyGroupPropertyGroupId (\s a -> s { _kinesisAnalyticsV2ApplicationPropertyGroupPropertyGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-propertygroup.html#cfn-kinesisanalyticsv2-application-propertygroup-propertymap
kavapgPropertyMap :: Lens' KinesisAnalyticsV2ApplicationPropertyGroup (Maybe Object)
kavapgPropertyMap = lens _kinesisAnalyticsV2ApplicationPropertyGroupPropertyMap (\s a -> s { _kinesisAnalyticsV2ApplicationPropertyGroupPropertyMap = a })
