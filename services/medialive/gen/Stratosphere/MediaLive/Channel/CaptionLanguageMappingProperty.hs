module Stratosphere.MediaLive.Channel.CaptionLanguageMappingProperty (
        CaptionLanguageMappingProperty(..),
        mkCaptionLanguageMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptionLanguageMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html>
    CaptionLanguageMappingProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html#cfn-medialive-channel-captionlanguagemapping-captionchannel>
                                    captionChannel :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html#cfn-medialive-channel-captionlanguagemapping-languagecode>
                                    languageCode :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html#cfn-medialive-channel-captionlanguagemapping-languagedescription>
                                    languageDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptionLanguageMappingProperty :: CaptionLanguageMappingProperty
mkCaptionLanguageMappingProperty
  = CaptionLanguageMappingProperty
      {haddock_workaround_ = (), captionChannel = Prelude.Nothing,
       languageCode = Prelude.Nothing,
       languageDescription = Prelude.Nothing}
instance ToResourceProperties CaptionLanguageMappingProperty where
  toResourceProperties CaptionLanguageMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CaptionLanguageMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaptionChannel" Prelude.<$> captionChannel,
                            (JSON..=) "LanguageCode" Prelude.<$> languageCode,
                            (JSON..=) "LanguageDescription" Prelude.<$> languageDescription])}
instance JSON.ToJSON CaptionLanguageMappingProperty where
  toJSON CaptionLanguageMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaptionChannel" Prelude.<$> captionChannel,
               (JSON..=) "LanguageCode" Prelude.<$> languageCode,
               (JSON..=) "LanguageDescription" Prelude.<$> languageDescription]))
instance Property "CaptionChannel" CaptionLanguageMappingProperty where
  type PropertyType "CaptionChannel" CaptionLanguageMappingProperty = Value Prelude.Integer
  set newValue CaptionLanguageMappingProperty {..}
    = CaptionLanguageMappingProperty
        {captionChannel = Prelude.pure newValue, ..}
instance Property "LanguageCode" CaptionLanguageMappingProperty where
  type PropertyType "LanguageCode" CaptionLanguageMappingProperty = Value Prelude.Text
  set newValue CaptionLanguageMappingProperty {..}
    = CaptionLanguageMappingProperty
        {languageCode = Prelude.pure newValue, ..}
instance Property "LanguageDescription" CaptionLanguageMappingProperty where
  type PropertyType "LanguageDescription" CaptionLanguageMappingProperty = Value Prelude.Text
  set newValue CaptionLanguageMappingProperty {..}
    = CaptionLanguageMappingProperty
        {languageDescription = Prelude.pure newValue, ..}