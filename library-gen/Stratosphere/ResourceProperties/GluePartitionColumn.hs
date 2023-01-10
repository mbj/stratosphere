
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html

module Stratosphere.ResourceProperties.GluePartitionColumn where

import Stratosphere.ResourceImports


-- | Full data type definition for GluePartitionColumn. See
-- 'gluePartitionColumn' for a more convenient constructor.
data GluePartitionColumn =
  GluePartitionColumn
  { _gluePartitionColumnComment :: Maybe (Val Text)
  , _gluePartitionColumnName :: Val Text
  , _gluePartitionColumnType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GluePartitionColumn where
  toJSON GluePartitionColumn{..} =
    object $
    catMaybes
    [ fmap (("Comment",) . toJSON) _gluePartitionColumnComment
    , (Just . ("Name",) . toJSON) _gluePartitionColumnName
    , fmap (("Type",) . toJSON) _gluePartitionColumnType
    ]

-- | Constructor for 'GluePartitionColumn' containing required fields as
-- arguments.
gluePartitionColumn
  :: Val Text -- ^ 'gpcName'
  -> GluePartitionColumn
gluePartitionColumn namearg =
  GluePartitionColumn
  { _gluePartitionColumnComment = Nothing
  , _gluePartitionColumnName = namearg
  , _gluePartitionColumnType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html#cfn-glue-partition-column-comment
gpcComment :: Lens' GluePartitionColumn (Maybe (Val Text))
gpcComment = lens _gluePartitionColumnComment (\s a -> s { _gluePartitionColumnComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html#cfn-glue-partition-column-name
gpcName :: Lens' GluePartitionColumn (Val Text)
gpcName = lens _gluePartitionColumnName (\s a -> s { _gluePartitionColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html#cfn-glue-partition-column-type
gpcType :: Lens' GluePartitionColumn (Maybe (Val Text))
gpcType = lens _gluePartitionColumnType (\s a -> s { _gluePartitionColumnType = a })
