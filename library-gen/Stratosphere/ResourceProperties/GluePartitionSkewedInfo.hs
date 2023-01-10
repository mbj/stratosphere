
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html

module Stratosphere.ResourceProperties.GluePartitionSkewedInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for GluePartitionSkewedInfo. See
-- 'gluePartitionSkewedInfo' for a more convenient constructor.
data GluePartitionSkewedInfo =
  GluePartitionSkewedInfo
  { _gluePartitionSkewedInfoSkewedColumnNames :: Maybe (ValList Text)
  , _gluePartitionSkewedInfoSkewedColumnValueLocationMaps :: Maybe Object
  , _gluePartitionSkewedInfoSkewedColumnValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GluePartitionSkewedInfo where
  toJSON GluePartitionSkewedInfo{..} =
    object $
    catMaybes
    [ fmap (("SkewedColumnNames",) . toJSON) _gluePartitionSkewedInfoSkewedColumnNames
    , fmap (("SkewedColumnValueLocationMaps",) . toJSON) _gluePartitionSkewedInfoSkewedColumnValueLocationMaps
    , fmap (("SkewedColumnValues",) . toJSON) _gluePartitionSkewedInfoSkewedColumnValues
    ]

-- | Constructor for 'GluePartitionSkewedInfo' containing required fields as
-- arguments.
gluePartitionSkewedInfo
  :: GluePartitionSkewedInfo
gluePartitionSkewedInfo  =
  GluePartitionSkewedInfo
  { _gluePartitionSkewedInfoSkewedColumnNames = Nothing
  , _gluePartitionSkewedInfoSkewedColumnValueLocationMaps = Nothing
  , _gluePartitionSkewedInfoSkewedColumnValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html#cfn-glue-partition-skewedinfo-skewedcolumnnames
gpsiSkewedColumnNames :: Lens' GluePartitionSkewedInfo (Maybe (ValList Text))
gpsiSkewedColumnNames = lens _gluePartitionSkewedInfoSkewedColumnNames (\s a -> s { _gluePartitionSkewedInfoSkewedColumnNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html#cfn-glue-partition-skewedinfo-skewedcolumnvaluelocationmaps
gpsiSkewedColumnValueLocationMaps :: Lens' GluePartitionSkewedInfo (Maybe Object)
gpsiSkewedColumnValueLocationMaps = lens _gluePartitionSkewedInfoSkewedColumnValueLocationMaps (\s a -> s { _gluePartitionSkewedInfoSkewedColumnValueLocationMaps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html#cfn-glue-partition-skewedinfo-skewedcolumnvalues
gpsiSkewedColumnValues :: Lens' GluePartitionSkewedInfo (Maybe (ValList Text))
gpsiSkewedColumnValues = lens _gluePartitionSkewedInfoSkewedColumnValues (\s a -> s { _gluePartitionSkewedInfoSkewedColumnValues = a })
