{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html

module Stratosphere.ResourceProperties.GlueTableSkewedInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueTableSkewedInfo. See
-- 'glueTableSkewedInfo' for a more convenient constructor.
data GlueTableSkewedInfo =
  GlueTableSkewedInfo
  { _glueTableSkewedInfoSkewedColumnNames :: Maybe (ValList Text)
  , _glueTableSkewedInfoSkewedColumnValueLocationMaps :: Maybe Object
  , _glueTableSkewedInfoSkewedColumnValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GlueTableSkewedInfo where
  toJSON GlueTableSkewedInfo{..} =
    object $
    catMaybes
    [ fmap (("SkewedColumnNames",) . toJSON) _glueTableSkewedInfoSkewedColumnNames
    , fmap (("SkewedColumnValueLocationMaps",) . toJSON) _glueTableSkewedInfoSkewedColumnValueLocationMaps
    , fmap (("SkewedColumnValues",) . toJSON) _glueTableSkewedInfoSkewedColumnValues
    ]

instance FromJSON GlueTableSkewedInfo where
  parseJSON (Object obj) =
    GlueTableSkewedInfo <$>
      (obj .:? "SkewedColumnNames") <*>
      (obj .:? "SkewedColumnValueLocationMaps") <*>
      (obj .:? "SkewedColumnValues")
  parseJSON _ = mempty

-- | Constructor for 'GlueTableSkewedInfo' containing required fields as
-- arguments.
glueTableSkewedInfo
  :: GlueTableSkewedInfo
glueTableSkewedInfo  =
  GlueTableSkewedInfo
  { _glueTableSkewedInfoSkewedColumnNames = Nothing
  , _glueTableSkewedInfoSkewedColumnValueLocationMaps = Nothing
  , _glueTableSkewedInfoSkewedColumnValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnnames
gtsiSkewedColumnNames :: Lens' GlueTableSkewedInfo (Maybe (ValList Text))
gtsiSkewedColumnNames = lens _glueTableSkewedInfoSkewedColumnNames (\s a -> s { _glueTableSkewedInfoSkewedColumnNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnvaluelocationmaps
gtsiSkewedColumnValueLocationMaps :: Lens' GlueTableSkewedInfo (Maybe Object)
gtsiSkewedColumnValueLocationMaps = lens _glueTableSkewedInfoSkewedColumnValueLocationMaps (\s a -> s { _glueTableSkewedInfoSkewedColumnValueLocationMaps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnvalues
gtsiSkewedColumnValues :: Lens' GlueTableSkewedInfo (Maybe (ValList Text))
gtsiSkewedColumnValues = lens _glueTableSkewedInfoSkewedColumnValues (\s a -> s { _glueTableSkewedInfoSkewedColumnValues = a })
