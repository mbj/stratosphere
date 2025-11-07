module Stratosphere.MediaLive.Channel.CmafIngestCaptionLanguageMappingProperty (
        CmafIngestCaptionLanguageMappingProperty(..),
        mkCmafIngestCaptionLanguageMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmafIngestCaptionLanguageMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestcaptionlanguagemapping.html>
    CmafIngestCaptionLanguageMappingProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestcaptionlanguagemapping.html#cfn-medialive-channel-cmafingestcaptionlanguagemapping-captionchannel>
                                              captionChannel :: (Prelude.Maybe (Value Prelude.Integer)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-cmafingestcaptionlanguagemapping.html#cfn-medialive-channel-cmafingestcaptionlanguagemapping-languagecode>
                                              languageCode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafIngestCaptionLanguageMappingProperty ::
  CmafIngestCaptionLanguageMappingProperty
mkCmafIngestCaptionLanguageMappingProperty
  = CmafIngestCaptionLanguageMappingProperty
      {haddock_workaround_ = (), captionChannel = Prelude.Nothing,
       languageCode = Prelude.Nothing}
instance ToResourceProperties CmafIngestCaptionLanguageMappingProperty where
  toResourceProperties CmafIngestCaptionLanguageMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CmafIngestCaptionLanguageMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaptionChannel" Prelude.<$> captionChannel,
                            (JSON..=) "LanguageCode" Prelude.<$> languageCode])}
instance JSON.ToJSON CmafIngestCaptionLanguageMappingProperty where
  toJSON CmafIngestCaptionLanguageMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaptionChannel" Prelude.<$> captionChannel,
               (JSON..=) "LanguageCode" Prelude.<$> languageCode]))
instance Property "CaptionChannel" CmafIngestCaptionLanguageMappingProperty where
  type PropertyType "CaptionChannel" CmafIngestCaptionLanguageMappingProperty = Value Prelude.Integer
  set newValue CmafIngestCaptionLanguageMappingProperty {..}
    = CmafIngestCaptionLanguageMappingProperty
        {captionChannel = Prelude.pure newValue, ..}
instance Property "LanguageCode" CmafIngestCaptionLanguageMappingProperty where
  type PropertyType "LanguageCode" CmafIngestCaptionLanguageMappingProperty = Value Prelude.Text
  set newValue CmafIngestCaptionLanguageMappingProperty {..}
    = CmafIngestCaptionLanguageMappingProperty
        {languageCode = Prelude.pure newValue, ..}