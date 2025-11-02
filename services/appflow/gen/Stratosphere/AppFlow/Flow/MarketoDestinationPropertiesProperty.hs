module Stratosphere.AppFlow.Flow.MarketoDestinationPropertiesProperty (
        module Exports, MarketoDestinationPropertiesProperty(..),
        mkMarketoDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MarketoDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-marketodestinationproperties.html>
    MarketoDestinationPropertiesProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-marketodestinationproperties.html#cfn-appflow-flow-marketodestinationproperties-errorhandlingconfig>
                                          errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-marketodestinationproperties.html#cfn-appflow-flow-marketodestinationproperties-object>
                                          object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMarketoDestinationPropertiesProperty ::
  Value Prelude.Text -> MarketoDestinationPropertiesProperty
mkMarketoDestinationPropertiesProperty object
  = MarketoDestinationPropertiesProperty
      {haddock_workaround_ = (), object = object,
       errorHandlingConfig = Prelude.Nothing}
instance ToResourceProperties MarketoDestinationPropertiesProperty where
  toResourceProperties MarketoDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.MarketoDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "ErrorHandlingConfig"
                                 Prelude.<$> errorHandlingConfig]))}
instance JSON.ToJSON MarketoDestinationPropertiesProperty where
  toJSON MarketoDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "ErrorHandlingConfig"
                    Prelude.<$> errorHandlingConfig])))
instance Property "ErrorHandlingConfig" MarketoDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" MarketoDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue MarketoDestinationPropertiesProperty {..}
    = MarketoDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "Object" MarketoDestinationPropertiesProperty where
  type PropertyType "Object" MarketoDestinationPropertiesProperty = Value Prelude.Text
  set newValue MarketoDestinationPropertiesProperty {..}
    = MarketoDestinationPropertiesProperty {object = newValue, ..}