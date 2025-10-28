module Stratosphere.AppFlow.Flow.SAPODataDestinationPropertiesProperty (
        module Exports, SAPODataDestinationPropertiesProperty(..),
        mkSAPODataDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SuccessResponseHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAPODataDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatadestinationproperties.html>
    SAPODataDestinationPropertiesProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatadestinationproperties.html#cfn-appflow-flow-sapodatadestinationproperties-errorhandlingconfig>
                                           errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatadestinationproperties.html#cfn-appflow-flow-sapodatadestinationproperties-idfieldnames>
                                           idFieldNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatadestinationproperties.html#cfn-appflow-flow-sapodatadestinationproperties-objectpath>
                                           objectPath :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatadestinationproperties.html#cfn-appflow-flow-sapodatadestinationproperties-successresponsehandlingconfig>
                                           successResponseHandlingConfig :: (Prelude.Maybe SuccessResponseHandlingConfigProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatadestinationproperties.html#cfn-appflow-flow-sapodatadestinationproperties-writeoperationtype>
                                           writeOperationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAPODataDestinationPropertiesProperty ::
  Value Prelude.Text -> SAPODataDestinationPropertiesProperty
mkSAPODataDestinationPropertiesProperty objectPath
  = SAPODataDestinationPropertiesProperty
      {haddock_workaround_ = (), objectPath = objectPath,
       errorHandlingConfig = Prelude.Nothing,
       idFieldNames = Prelude.Nothing,
       successResponseHandlingConfig = Prelude.Nothing,
       writeOperationType = Prelude.Nothing}
instance ToResourceProperties SAPODataDestinationPropertiesProperty where
  toResourceProperties SAPODataDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SAPODataDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObjectPath" JSON..= objectPath]
                           (Prelude.catMaybes
                              [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                               (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                               (JSON..=) "SuccessResponseHandlingConfig"
                                 Prelude.<$> successResponseHandlingConfig,
                               (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType]))}
instance JSON.ToJSON SAPODataDestinationPropertiesProperty where
  toJSON SAPODataDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObjectPath" JSON..= objectPath]
              (Prelude.catMaybes
                 [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                  (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                  (JSON..=) "SuccessResponseHandlingConfig"
                    Prelude.<$> successResponseHandlingConfig,
                  (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType])))
instance Property "ErrorHandlingConfig" SAPODataDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" SAPODataDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IdFieldNames" SAPODataDestinationPropertiesProperty where
  type PropertyType "IdFieldNames" SAPODataDestinationPropertiesProperty = ValueList Prelude.Text
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {idFieldNames = Prelude.pure newValue, ..}
instance Property "ObjectPath" SAPODataDestinationPropertiesProperty where
  type PropertyType "ObjectPath" SAPODataDestinationPropertiesProperty = Value Prelude.Text
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty {objectPath = newValue, ..}
instance Property "SuccessResponseHandlingConfig" SAPODataDestinationPropertiesProperty where
  type PropertyType "SuccessResponseHandlingConfig" SAPODataDestinationPropertiesProperty = SuccessResponseHandlingConfigProperty
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {successResponseHandlingConfig = Prelude.pure newValue, ..}
instance Property "WriteOperationType" SAPODataDestinationPropertiesProperty where
  type PropertyType "WriteOperationType" SAPODataDestinationPropertiesProperty = Value Prelude.Text
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {writeOperationType = Prelude.pure newValue, ..}