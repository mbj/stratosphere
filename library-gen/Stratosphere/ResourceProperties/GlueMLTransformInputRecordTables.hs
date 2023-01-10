
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html

module Stratosphere.ResourceProperties.GlueMLTransformInputRecordTables where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueMLTransformGlueTables

-- | Full data type definition for GlueMLTransformInputRecordTables. See
-- 'glueMLTransformInputRecordTables' for a more convenient constructor.
data GlueMLTransformInputRecordTables =
  GlueMLTransformInputRecordTables
  { _glueMLTransformInputRecordTablesGlueTables :: Maybe [GlueMLTransformGlueTables]
  } deriving (Show, Eq)

instance ToJSON GlueMLTransformInputRecordTables where
  toJSON GlueMLTransformInputRecordTables{..} =
    object $
    catMaybes
    [ fmap (("GlueTables",) . toJSON) _glueMLTransformInputRecordTablesGlueTables
    ]

-- | Constructor for 'GlueMLTransformInputRecordTables' containing required
-- fields as arguments.
glueMLTransformInputRecordTables
  :: GlueMLTransformInputRecordTables
glueMLTransformInputRecordTables  =
  GlueMLTransformInputRecordTables
  { _glueMLTransformInputRecordTablesGlueTables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html#cfn-glue-mltransform-inputrecordtables-gluetables
gmltirtGlueTables :: Lens' GlueMLTransformInputRecordTables (Maybe [GlueMLTransformGlueTables])
gmltirtGlueTables = lens _glueMLTransformInputRecordTablesGlueTables (\s a -> s { _glueMLTransformInputRecordTablesGlueTables = a })
