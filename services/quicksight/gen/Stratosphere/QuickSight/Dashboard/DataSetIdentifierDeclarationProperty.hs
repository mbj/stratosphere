module Stratosphere.QuickSight.Dashboard.DataSetIdentifierDeclarationProperty (
        DataSetIdentifierDeclarationProperty(..),
        mkDataSetIdentifierDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSetIdentifierDeclarationProperty
  = DataSetIdentifierDeclarationProperty {dataSetArn :: (Value Prelude.Text),
                                          identifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetIdentifierDeclarationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataSetIdentifierDeclarationProperty
mkDataSetIdentifierDeclarationProperty dataSetArn identifier
  = DataSetIdentifierDeclarationProperty
      {dataSetArn = dataSetArn, identifier = identifier}
instance ToResourceProperties DataSetIdentifierDeclarationProperty where
  toResourceProperties DataSetIdentifierDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataSetIdentifierDeclaration",
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