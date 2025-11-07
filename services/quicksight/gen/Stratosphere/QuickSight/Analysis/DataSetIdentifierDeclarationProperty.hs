module Stratosphere.QuickSight.Analysis.DataSetIdentifierDeclarationProperty (
        DataSetIdentifierDeclarationProperty(..),
        mkDataSetIdentifierDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSetIdentifierDeclarationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datasetidentifierdeclaration.html>
    DataSetIdentifierDeclarationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datasetidentifierdeclaration.html#cfn-quicksight-analysis-datasetidentifierdeclaration-datasetarn>
                                          dataSetArn :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datasetidentifierdeclaration.html#cfn-quicksight-analysis-datasetidentifierdeclaration-identifier>
                                          identifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetIdentifierDeclarationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataSetIdentifierDeclarationProperty
mkDataSetIdentifierDeclarationProperty dataSetArn identifier
  = DataSetIdentifierDeclarationProperty
      {haddock_workaround_ = (), dataSetArn = dataSetArn,
       identifier = identifier}
instance ToResourceProperties DataSetIdentifierDeclarationProperty where
  toResourceProperties DataSetIdentifierDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DataSetIdentifierDeclaration",
         supportsTags = Prelude.False,
         properties = ["DataSetArn" JSON..= dataSetArn,
                       "Identifier" JSON..= identifier]}
instance JSON.ToJSON DataSetIdentifierDeclarationProperty where
  toJSON DataSetIdentifierDeclarationProperty {..}
    = JSON.object
        ["DataSetArn" JSON..= dataSetArn, "Identifier" JSON..= identifier]
instance Property "DataSetArn" DataSetIdentifierDeclarationProperty where
  type PropertyType "DataSetArn" DataSetIdentifierDeclarationProperty = Value Prelude.Text
  set newValue DataSetIdentifierDeclarationProperty {..}
    = DataSetIdentifierDeclarationProperty {dataSetArn = newValue, ..}
instance Property "Identifier" DataSetIdentifierDeclarationProperty where
  type PropertyType "Identifier" DataSetIdentifierDeclarationProperty = Value Prelude.Text
  set newValue DataSetIdentifierDeclarationProperty {..}
    = DataSetIdentifierDeclarationProperty {identifier = newValue, ..}