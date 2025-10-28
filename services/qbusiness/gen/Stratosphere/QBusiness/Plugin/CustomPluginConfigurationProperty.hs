module Stratosphere.QBusiness.Plugin.CustomPluginConfigurationProperty (
        module Exports, CustomPluginConfigurationProperty(..),
        mkCustomPluginConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Plugin.APISchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPluginConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-custompluginconfiguration.html>
    CustomPluginConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-custompluginconfiguration.html#cfn-qbusiness-plugin-custompluginconfiguration-apischema>
                                       apiSchema :: APISchemaProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-custompluginconfiguration.html#cfn-qbusiness-plugin-custompluginconfiguration-apischematype>
                                       apiSchemaType :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-plugin-custompluginconfiguration.html#cfn-qbusiness-plugin-custompluginconfiguration-description>
                                       description :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPluginConfigurationProperty ::
  APISchemaProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> CustomPluginConfigurationProperty
mkCustomPluginConfigurationProperty
  apiSchema
  apiSchemaType
  description
  = CustomPluginConfigurationProperty
      {haddock_workaround_ = (), apiSchema = apiSchema,
       apiSchemaType = apiSchemaType, description = description}
instance ToResourceProperties CustomPluginConfigurationProperty where
  toResourceProperties CustomPluginConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Plugin.CustomPluginConfiguration",
         supportsTags = Prelude.False,
         properties = ["ApiSchema" JSON..= apiSchema,
                       "ApiSchemaType" JSON..= apiSchemaType,
                       "Description" JSON..= description]}
instance JSON.ToJSON CustomPluginConfigurationProperty where
  toJSON CustomPluginConfigurationProperty {..}
    = JSON.object
        ["ApiSchema" JSON..= apiSchema,
         "ApiSchemaType" JSON..= apiSchemaType,
         "Description" JSON..= description]
instance Property "ApiSchema" CustomPluginConfigurationProperty where
  type PropertyType "ApiSchema" CustomPluginConfigurationProperty = APISchemaProperty
  set newValue CustomPluginConfigurationProperty {..}
    = CustomPluginConfigurationProperty {apiSchema = newValue, ..}
instance Property "ApiSchemaType" CustomPluginConfigurationProperty where
  type PropertyType "ApiSchemaType" CustomPluginConfigurationProperty = Value Prelude.Text
  set newValue CustomPluginConfigurationProperty {..}
    = CustomPluginConfigurationProperty {apiSchemaType = newValue, ..}
instance Property "Description" CustomPluginConfigurationProperty where
  type PropertyType "Description" CustomPluginConfigurationProperty = Value Prelude.Text
  set newValue CustomPluginConfigurationProperty {..}
    = CustomPluginConfigurationProperty {description = newValue, ..}