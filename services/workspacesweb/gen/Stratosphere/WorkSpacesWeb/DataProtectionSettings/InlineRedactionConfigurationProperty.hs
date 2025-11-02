module Stratosphere.WorkSpacesWeb.DataProtectionSettings.InlineRedactionConfigurationProperty (
        module Exports, InlineRedactionConfigurationProperty(..),
        mkInlineRedactionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.DataProtectionSettings.InlineRedactionPatternProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InlineRedactionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionconfiguration.html>
    InlineRedactionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionconfiguration.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionconfiguration-globalconfidencelevel>
                                          globalConfidenceLevel :: (Prelude.Maybe (Value Prelude.Double)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionconfiguration.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionconfiguration-globalenforcedurls>
                                          globalEnforcedUrls :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionconfiguration.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionconfiguration-globalexempturls>
                                          globalExemptUrls :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionconfiguration.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionconfiguration-inlineredactionpatterns>
                                          inlineRedactionPatterns :: [InlineRedactionPatternProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInlineRedactionConfigurationProperty ::
  [InlineRedactionPatternProperty]
  -> InlineRedactionConfigurationProperty
mkInlineRedactionConfigurationProperty inlineRedactionPatterns
  = InlineRedactionConfigurationProperty
      {haddock_workaround_ = (),
       inlineRedactionPatterns = inlineRedactionPatterns,
       globalConfidenceLevel = Prelude.Nothing,
       globalEnforcedUrls = Prelude.Nothing,
       globalExemptUrls = Prelude.Nothing}
instance ToResourceProperties InlineRedactionConfigurationProperty where
  toResourceProperties InlineRedactionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::DataProtectionSettings.InlineRedactionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InlineRedactionPatterns" JSON..= inlineRedactionPatterns]
                           (Prelude.catMaybes
                              [(JSON..=) "GlobalConfidenceLevel"
                                 Prelude.<$> globalConfidenceLevel,
                               (JSON..=) "GlobalEnforcedUrls" Prelude.<$> globalEnforcedUrls,
                               (JSON..=) "GlobalExemptUrls" Prelude.<$> globalExemptUrls]))}
instance JSON.ToJSON InlineRedactionConfigurationProperty where
  toJSON InlineRedactionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InlineRedactionPatterns" JSON..= inlineRedactionPatterns]
              (Prelude.catMaybes
                 [(JSON..=) "GlobalConfidenceLevel"
                    Prelude.<$> globalConfidenceLevel,
                  (JSON..=) "GlobalEnforcedUrls" Prelude.<$> globalEnforcedUrls,
                  (JSON..=) "GlobalExemptUrls" Prelude.<$> globalExemptUrls])))
instance Property "GlobalConfidenceLevel" InlineRedactionConfigurationProperty where
  type PropertyType "GlobalConfidenceLevel" InlineRedactionConfigurationProperty = Value Prelude.Double
  set newValue InlineRedactionConfigurationProperty {..}
    = InlineRedactionConfigurationProperty
        {globalConfidenceLevel = Prelude.pure newValue, ..}
instance Property "GlobalEnforcedUrls" InlineRedactionConfigurationProperty where
  type PropertyType "GlobalEnforcedUrls" InlineRedactionConfigurationProperty = ValueList Prelude.Text
  set newValue InlineRedactionConfigurationProperty {..}
    = InlineRedactionConfigurationProperty
        {globalEnforcedUrls = Prelude.pure newValue, ..}
instance Property "GlobalExemptUrls" InlineRedactionConfigurationProperty where
  type PropertyType "GlobalExemptUrls" InlineRedactionConfigurationProperty = ValueList Prelude.Text
  set newValue InlineRedactionConfigurationProperty {..}
    = InlineRedactionConfigurationProperty
        {globalExemptUrls = Prelude.pure newValue, ..}
instance Property "InlineRedactionPatterns" InlineRedactionConfigurationProperty where
  type PropertyType "InlineRedactionPatterns" InlineRedactionConfigurationProperty = [InlineRedactionPatternProperty]
  set newValue InlineRedactionConfigurationProperty {..}
    = InlineRedactionConfigurationProperty
        {inlineRedactionPatterns = newValue, ..}