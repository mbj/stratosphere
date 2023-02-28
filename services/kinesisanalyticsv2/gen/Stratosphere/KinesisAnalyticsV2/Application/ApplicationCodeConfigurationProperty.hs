module Stratosphere.KinesisAnalyticsV2.Application.ApplicationCodeConfigurationProperty (
        module Exports, ApplicationCodeConfigurationProperty(..),
        mkApplicationCodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.CodeContentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationCodeConfigurationProperty
  = ApplicationCodeConfigurationProperty {codeContent :: CodeContentProperty,
                                          codeContentType :: (Value Prelude.Text)}
mkApplicationCodeConfigurationProperty ::
  CodeContentProperty
  -> Value Prelude.Text -> ApplicationCodeConfigurationProperty
mkApplicationCodeConfigurationProperty codeContent codeContentType
  = ApplicationCodeConfigurationProperty
      {codeContent = codeContent, codeContentType = codeContentType}
instance ToResourceProperties ApplicationCodeConfigurationProperty where
  toResourceProperties ApplicationCodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationCodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["CodeContent" JSON..= codeContent,
                       "CodeContentType" JSON..= codeContentType]}
instance JSON.ToJSON ApplicationCodeConfigurationProperty where
  toJSON ApplicationCodeConfigurationProperty {..}
    = JSON.object
        ["CodeContent" JSON..= codeContent,
         "CodeContentType" JSON..= codeContentType]
instance Property "CodeContent" ApplicationCodeConfigurationProperty where
  type PropertyType "CodeContent" ApplicationCodeConfigurationProperty = CodeContentProperty
  set newValue ApplicationCodeConfigurationProperty {..}
    = ApplicationCodeConfigurationProperty {codeContent = newValue, ..}
instance Property "CodeContentType" ApplicationCodeConfigurationProperty where
  type PropertyType "CodeContentType" ApplicationCodeConfigurationProperty = Value Prelude.Text
  set newValue ApplicationCodeConfigurationProperty {..}
    = ApplicationCodeConfigurationProperty
        {codeContentType = newValue, ..}