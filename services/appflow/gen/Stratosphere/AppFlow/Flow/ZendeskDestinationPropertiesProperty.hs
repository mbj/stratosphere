module Stratosphere.AppFlow.Flow.ZendeskDestinationPropertiesProperty (
        module Exports, ZendeskDestinationPropertiesProperty(..),
        mkZendeskDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZendeskDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-zendeskdestinationproperties.html>
    ZendeskDestinationPropertiesProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-zendeskdestinationproperties.html#cfn-appflow-flow-zendeskdestinationproperties-errorhandlingconfig>
                                          errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-zendeskdestinationproperties.html#cfn-appflow-flow-zendeskdestinationproperties-idfieldnames>
                                          idFieldNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-zendeskdestinationproperties.html#cfn-appflow-flow-zendeskdestinationproperties-object>
                                          object :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-zendeskdestinationproperties.html#cfn-appflow-flow-zendeskdestinationproperties-writeoperationtype>
                                          writeOperationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZendeskDestinationPropertiesProperty ::
  Value Prelude.Text -> ZendeskDestinationPropertiesProperty
mkZendeskDestinationPropertiesProperty object
  = ZendeskDestinationPropertiesProperty
      {haddock_workaround_ = (), object = object,
       errorHandlingConfig = Prelude.Nothing,
       idFieldNames = Prelude.Nothing,
       writeOperationType = Prelude.Nothing}
instance ToResourceProperties ZendeskDestinationPropertiesProperty where
  toResourceProperties ZendeskDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.ZendeskDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                               (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                               (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType]))}
instance JSON.ToJSON ZendeskDestinationPropertiesProperty where
  toJSON ZendeskDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                  (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                  (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType])))
instance Property "ErrorHandlingConfig" ZendeskDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" ZendeskDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IdFieldNames" ZendeskDestinationPropertiesProperty where
  type PropertyType "IdFieldNames" ZendeskDestinationPropertiesProperty = ValueList Prelude.Text
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty
        {idFieldNames = Prelude.pure newValue, ..}
instance Property "Object" ZendeskDestinationPropertiesProperty where
  type PropertyType "Object" ZendeskDestinationPropertiesProperty = Value Prelude.Text
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty {object = newValue, ..}
instance Property "WriteOperationType" ZendeskDestinationPropertiesProperty where
  type PropertyType "WriteOperationType" ZendeskDestinationPropertiesProperty = Value Prelude.Text
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty
        {writeOperationType = Prelude.pure newValue, ..}