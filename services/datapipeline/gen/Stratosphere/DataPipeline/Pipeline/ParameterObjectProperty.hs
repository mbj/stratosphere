module Stratosphere.DataPipeline.Pipeline.ParameterObjectProperty (
        module Exports, ParameterObjectProperty(..),
        mkParameterObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataPipeline.Pipeline.ParameterAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobject.html>
    ParameterObjectProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobject.html#cfn-datapipeline-pipeline-parameterobject-attributes>
                             attributes :: [ParameterAttributeProperty],
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobject.html#cfn-datapipeline-pipeline-parameterobject-id>
                             id :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterObjectProperty ::
  [ParameterAttributeProperty]
  -> Value Prelude.Text -> ParameterObjectProperty
mkParameterObjectProperty attributes id
  = ParameterObjectProperty
      {haddock_workaround_ = (), attributes = attributes, id = id}
instance ToResourceProperties ParameterObjectProperty where
  toResourceProperties ParameterObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline.ParameterObject",
         supportsTags = Prelude.False,
         properties = ["Attributes" JSON..= attributes, "Id" JSON..= id]}
instance JSON.ToJSON ParameterObjectProperty where
  toJSON ParameterObjectProperty {..}
    = JSON.object ["Attributes" JSON..= attributes, "Id" JSON..= id]
instance Property "Attributes" ParameterObjectProperty where
  type PropertyType "Attributes" ParameterObjectProperty = [ParameterAttributeProperty]
  set newValue ParameterObjectProperty {..}
    = ParameterObjectProperty {attributes = newValue, ..}
instance Property "Id" ParameterObjectProperty where
  type PropertyType "Id" ParameterObjectProperty = Value Prelude.Text
  set newValue ParameterObjectProperty {..}
    = ParameterObjectProperty {id = newValue, ..}