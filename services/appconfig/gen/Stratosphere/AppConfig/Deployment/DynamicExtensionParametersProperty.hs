module Stratosphere.AppConfig.Deployment.DynamicExtensionParametersProperty (
        DynamicExtensionParametersProperty(..),
        mkDynamicExtensionParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamicExtensionParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-dynamicextensionparameters.html>
    DynamicExtensionParametersProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-dynamicextensionparameters.html#cfn-appconfig-deployment-dynamicextensionparameters-extensionreference>
                                        extensionReference :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-dynamicextensionparameters.html#cfn-appconfig-deployment-dynamicextensionparameters-parametername>
                                        parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-dynamicextensionparameters.html#cfn-appconfig-deployment-dynamicextensionparameters-parametervalue>
                                        parameterValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamicExtensionParametersProperty ::
  DynamicExtensionParametersProperty
mkDynamicExtensionParametersProperty
  = DynamicExtensionParametersProperty
      {haddock_workaround_ = (), extensionReference = Prelude.Nothing,
       parameterName = Prelude.Nothing, parameterValue = Prelude.Nothing}
instance ToResourceProperties DynamicExtensionParametersProperty where
  toResourceProperties DynamicExtensionParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Deployment.DynamicExtensionParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExtensionReference" Prelude.<$> extensionReference,
                            (JSON..=) "ParameterName" Prelude.<$> parameterName,
                            (JSON..=) "ParameterValue" Prelude.<$> parameterValue])}
instance JSON.ToJSON DynamicExtensionParametersProperty where
  toJSON DynamicExtensionParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExtensionReference" Prelude.<$> extensionReference,
               (JSON..=) "ParameterName" Prelude.<$> parameterName,
               (JSON..=) "ParameterValue" Prelude.<$> parameterValue]))
instance Property "ExtensionReference" DynamicExtensionParametersProperty where
  type PropertyType "ExtensionReference" DynamicExtensionParametersProperty = Value Prelude.Text
  set newValue DynamicExtensionParametersProperty {..}
    = DynamicExtensionParametersProperty
        {extensionReference = Prelude.pure newValue, ..}
instance Property "ParameterName" DynamicExtensionParametersProperty where
  type PropertyType "ParameterName" DynamicExtensionParametersProperty = Value Prelude.Text
  set newValue DynamicExtensionParametersProperty {..}
    = DynamicExtensionParametersProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "ParameterValue" DynamicExtensionParametersProperty where
  type PropertyType "ParameterValue" DynamicExtensionParametersProperty = Value Prelude.Text
  set newValue DynamicExtensionParametersProperty {..}
    = DynamicExtensionParametersProperty
        {parameterValue = Prelude.pure newValue, ..}