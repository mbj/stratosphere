module Stratosphere.AppFlow.Flow.CustomConnectorDestinationPropertiesProperty (
        module Exports, CustomConnectorDestinationPropertiesProperty(..),
        mkCustomConnectorDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomConnectorDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectordestinationproperties.html>
    CustomConnectorDestinationPropertiesProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectordestinationproperties.html#cfn-appflow-flow-customconnectordestinationproperties-customproperties>
                                                  customProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectordestinationproperties.html#cfn-appflow-flow-customconnectordestinationproperties-entityname>
                                                  entityName :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectordestinationproperties.html#cfn-appflow-flow-customconnectordestinationproperties-errorhandlingconfig>
                                                  errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectordestinationproperties.html#cfn-appflow-flow-customconnectordestinationproperties-idfieldnames>
                                                  idFieldNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-customconnectordestinationproperties.html#cfn-appflow-flow-customconnectordestinationproperties-writeoperationtype>
                                                  writeOperationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomConnectorDestinationPropertiesProperty ::
  Value Prelude.Text -> CustomConnectorDestinationPropertiesProperty
mkCustomConnectorDestinationPropertiesProperty entityName
  = CustomConnectorDestinationPropertiesProperty
      {haddock_workaround_ = (), entityName = entityName,
       customProperties = Prelude.Nothing,
       errorHandlingConfig = Prelude.Nothing,
       idFieldNames = Prelude.Nothing,
       writeOperationType = Prelude.Nothing}
instance ToResourceProperties CustomConnectorDestinationPropertiesProperty where
  toResourceProperties
    CustomConnectorDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.CustomConnectorDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityName" JSON..= entityName]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomProperties" Prelude.<$> customProperties,
                               (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                               (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                               (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType]))}
instance JSON.ToJSON CustomConnectorDestinationPropertiesProperty where
  toJSON CustomConnectorDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityName" JSON..= entityName]
              (Prelude.catMaybes
                 [(JSON..=) "CustomProperties" Prelude.<$> customProperties,
                  (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                  (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                  (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType])))
instance Property "CustomProperties" CustomConnectorDestinationPropertiesProperty where
  type PropertyType "CustomProperties" CustomConnectorDestinationPropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CustomConnectorDestinationPropertiesProperty {..}
    = CustomConnectorDestinationPropertiesProperty
        {customProperties = Prelude.pure newValue, ..}
instance Property "EntityName" CustomConnectorDestinationPropertiesProperty where
  type PropertyType "EntityName" CustomConnectorDestinationPropertiesProperty = Value Prelude.Text
  set newValue CustomConnectorDestinationPropertiesProperty {..}
    = CustomConnectorDestinationPropertiesProperty
        {entityName = newValue, ..}
instance Property "ErrorHandlingConfig" CustomConnectorDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" CustomConnectorDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue CustomConnectorDestinationPropertiesProperty {..}
    = CustomConnectorDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IdFieldNames" CustomConnectorDestinationPropertiesProperty where
  type PropertyType "IdFieldNames" CustomConnectorDestinationPropertiesProperty = ValueList Prelude.Text
  set newValue CustomConnectorDestinationPropertiesProperty {..}
    = CustomConnectorDestinationPropertiesProperty
        {idFieldNames = Prelude.pure newValue, ..}
instance Property "WriteOperationType" CustomConnectorDestinationPropertiesProperty where
  type PropertyType "WriteOperationType" CustomConnectorDestinationPropertiesProperty = Value Prelude.Text
  set newValue CustomConnectorDestinationPropertiesProperty {..}
    = CustomConnectorDestinationPropertiesProperty
        {writeOperationType = Prelude.pure newValue, ..}