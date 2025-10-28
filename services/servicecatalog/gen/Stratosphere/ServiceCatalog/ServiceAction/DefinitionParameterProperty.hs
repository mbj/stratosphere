module Stratosphere.ServiceCatalog.ServiceAction.DefinitionParameterProperty (
        DefinitionParameterProperty(..), mkDefinitionParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefinitionParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-serviceaction-definitionparameter.html>
    DefinitionParameterProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-serviceaction-definitionparameter.html#cfn-servicecatalog-serviceaction-definitionparameter-key>
                                 key :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-serviceaction-definitionparameter.html#cfn-servicecatalog-serviceaction-definitionparameter-value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefinitionParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DefinitionParameterProperty
mkDefinitionParameterProperty key value
  = DefinitionParameterProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties DefinitionParameterProperty where
  toResourceProperties DefinitionParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::ServiceAction.DefinitionParameter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON DefinitionParameterProperty where
  toJSON DefinitionParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" DefinitionParameterProperty where
  type PropertyType "Key" DefinitionParameterProperty = Value Prelude.Text
  set newValue DefinitionParameterProperty {..}
    = DefinitionParameterProperty {key = newValue, ..}
instance Property "Value" DefinitionParameterProperty where
  type PropertyType "Value" DefinitionParameterProperty = Value Prelude.Text
  set newValue DefinitionParameterProperty {..}
    = DefinitionParameterProperty {value = newValue, ..}