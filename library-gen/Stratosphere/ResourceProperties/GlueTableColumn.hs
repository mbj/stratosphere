
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html

module Stratosphere.ResourceProperties.GlueTableColumn where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GlueTableColumn. See 'glueTableColumn' for
-- a more convenient constructor.
data GlueTableColumn =
  GlueTableColumn
  { _glueTableColumnComment :: Maybe (Val Text)
  , _glueTableColumnName :: Val Text
  , _glueTableColumnType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueTableColumn where
  toJSON GlueTableColumn{..} =
    object $
    catMaybes
    [ fmap (("Comment",) . toJSON) _glueTableColumnComment
    , (Just . ("Name",) . toJSON) _glueTableColumnName
    , fmap (("Type",) . toJSON) _glueTableColumnType
    ]

-- | Constructor for 'GlueTableColumn' containing required fields as
-- arguments.
glueTableColumn
  :: Val Text -- ^ 'gtcName'
  -> GlueTableColumn
glueTableColumn namearg =
  GlueTableColumn
  { _glueTableColumnComment = Nothing
  , _glueTableColumnName = namearg
  , _glueTableColumnType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html#cfn-glue-table-column-comment
gtcComment :: Lens' GlueTableColumn (Maybe (Val Text))
gtcComment = lens _glueTableColumnComment (\s a -> s { _glueTableColumnComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html#cfn-glue-table-column-name
gtcName :: Lens' GlueTableColumn (Val Text)
gtcName = lens _glueTableColumnName (\s a -> s { _glueTableColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html#cfn-glue-table-column-type
gtcType :: Lens' GlueTableColumn (Maybe (Val Text))
gtcType = lens _glueTableColumnType (\s a -> s { _glueTableColumnType = a })
