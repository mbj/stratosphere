module Stratosphere.WorkSpacesWeb.DataProtectionSettings.InlineRedactionPatternProperty (
        module Exports, InlineRedactionPatternProperty(..),
        mkInlineRedactionPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.DataProtectionSettings.CustomPatternProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.DataProtectionSettings.RedactionPlaceHolderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InlineRedactionPatternProperty
  = InlineRedactionPatternProperty {builtInPatternId :: (Prelude.Maybe (Value Prelude.Text)),
                                    confidenceLevel :: (Prelude.Maybe (Value Prelude.Double)),
                                    customPattern :: (Prelude.Maybe CustomPatternProperty),
                                    enforcedUrls :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    exemptUrls :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    redactionPlaceHolder :: RedactionPlaceHolderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInlineRedactionPatternProperty ::
  RedactionPlaceHolderProperty -> InlineRedactionPatternProperty
mkInlineRedactionPatternProperty redactionPlaceHolder
  = InlineRedactionPatternProperty
      {redactionPlaceHolder = redactionPlaceHolder,
       builtInPatternId = Prelude.Nothing,
       confidenceLevel = Prelude.Nothing, customPattern = Prelude.Nothing,
       enforcedUrls = Prelude.Nothing, exemptUrls = Prelude.Nothing}
instance ToResourceProperties InlineRedactionPatternProperty where
  toResourceProperties InlineRedactionPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::DataProtectionSettings.InlineRedactionPattern",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RedactionPlaceHolder" JSON..= redactionPlaceHolder]
                           (Prelude.catMaybes
                              [(JSON..=) "BuiltInPatternId" Prelude.<$> builtInPatternId,
                               (JSON..=) "ConfidenceLevel" Prelude.<$> confidenceLevel,
                               (JSON..=) "CustomPattern" Prelude.<$> customPattern,
                               (JSON..=) "EnforcedUrls" Prelude.<$> enforcedUrls,
                               (JSON..=) "ExemptUrls" Prelude.<$> exemptUrls]))}
instance JSON.ToJSON InlineRedactionPatternProperty where
  toJSON InlineRedactionPatternProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RedactionPlaceHolder" JSON..= redactionPlaceHolder]
              (Prelude.catMaybes
                 [(JSON..=) "BuiltInPatternId" Prelude.<$> builtInPatternId,
                  (JSON..=) "ConfidenceLevel" Prelude.<$> confidenceLevel,
                  (JSON..=) "CustomPattern" Prelude.<$> customPattern,
                  (JSON..=) "EnforcedUrls" Prelude.<$> enforcedUrls,
                  (JSON..=) "ExemptUrls" Prelude.<$> exemptUrls])))
instance Property "BuiltInPatternId" InlineRedactionPatternProperty where
  type PropertyType "BuiltInPatternId" InlineRedactionPatternProperty = Value Prelude.Text
  set newValue InlineRedactionPatternProperty {..}
    = InlineRedactionPatternProperty
        {builtInPatternId = Prelude.pure newValue, ..}
instance Property "ConfidenceLevel" InlineRedactionPatternProperty where
  type PropertyType "ConfidenceLevel" InlineRedactionPatternProperty = Value Prelude.Double
  set newValue InlineRedactionPatternProperty {..}
    = InlineRedactionPatternProperty
        {confidenceLevel = Prelude.pure newValue, ..}
instance Property "CustomPattern" InlineRedactionPatternProperty where
  type PropertyType "CustomPattern" InlineRedactionPatternProperty = CustomPatternProperty
  set newValue InlineRedactionPatternProperty {..}
    = InlineRedactionPatternProperty
        {customPattern = Prelude.pure newValue, ..}
instance Property "EnforcedUrls" InlineRedactionPatternProperty where
  type PropertyType "EnforcedUrls" InlineRedactionPatternProperty = ValueList Prelude.Text
  set newValue InlineRedactionPatternProperty {..}
    = InlineRedactionPatternProperty
        {enforcedUrls = Prelude.pure newValue, ..}
instance Property "ExemptUrls" InlineRedactionPatternProperty where
  type PropertyType "ExemptUrls" InlineRedactionPatternProperty = ValueList Prelude.Text
  set newValue InlineRedactionPatternProperty {..}
    = InlineRedactionPatternProperty
        {exemptUrls = Prelude.pure newValue, ..}
instance Property "RedactionPlaceHolder" InlineRedactionPatternProperty where
  type PropertyType "RedactionPlaceHolder" InlineRedactionPatternProperty = RedactionPlaceHolderProperty
  set newValue InlineRedactionPatternProperty {..}
    = InlineRedactionPatternProperty
        {redactionPlaceHolder = newValue, ..}