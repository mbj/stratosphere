module Stratosphere.Lex.Bot.AudioAndDTMFInputSpecificationProperty (
        module Exports, AudioAndDTMFInputSpecificationProperty(..),
        mkAudioAndDTMFInputSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.AudioSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DTMFSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioAndDTMFInputSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audioanddtmfinputspecification.html>
    AudioAndDTMFInputSpecificationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audioanddtmfinputspecification.html#cfn-lex-bot-audioanddtmfinputspecification-audiospecification>
                                            audioSpecification :: (Prelude.Maybe AudioSpecificationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audioanddtmfinputspecification.html#cfn-lex-bot-audioanddtmfinputspecification-dtmfspecification>
                                            dTMFSpecification :: (Prelude.Maybe DTMFSpecificationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audioanddtmfinputspecification.html#cfn-lex-bot-audioanddtmfinputspecification-starttimeoutms>
                                            startTimeoutMs :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioAndDTMFInputSpecificationProperty ::
  Value Prelude.Integer -> AudioAndDTMFInputSpecificationProperty
mkAudioAndDTMFInputSpecificationProperty startTimeoutMs
  = AudioAndDTMFInputSpecificationProperty
      {haddock_workaround_ = (), startTimeoutMs = startTimeoutMs,
       audioSpecification = Prelude.Nothing,
       dTMFSpecification = Prelude.Nothing}
instance ToResourceProperties AudioAndDTMFInputSpecificationProperty where
  toResourceProperties AudioAndDTMFInputSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.AudioAndDTMFInputSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StartTimeoutMs" JSON..= startTimeoutMs]
                           (Prelude.catMaybes
                              [(JSON..=) "AudioSpecification" Prelude.<$> audioSpecification,
                               (JSON..=) "DTMFSpecification" Prelude.<$> dTMFSpecification]))}
instance JSON.ToJSON AudioAndDTMFInputSpecificationProperty where
  toJSON AudioAndDTMFInputSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StartTimeoutMs" JSON..= startTimeoutMs]
              (Prelude.catMaybes
                 [(JSON..=) "AudioSpecification" Prelude.<$> audioSpecification,
                  (JSON..=) "DTMFSpecification" Prelude.<$> dTMFSpecification])))
instance Property "AudioSpecification" AudioAndDTMFInputSpecificationProperty where
  type PropertyType "AudioSpecification" AudioAndDTMFInputSpecificationProperty = AudioSpecificationProperty
  set newValue AudioAndDTMFInputSpecificationProperty {..}
    = AudioAndDTMFInputSpecificationProperty
        {audioSpecification = Prelude.pure newValue, ..}
instance Property "DTMFSpecification" AudioAndDTMFInputSpecificationProperty where
  type PropertyType "DTMFSpecification" AudioAndDTMFInputSpecificationProperty = DTMFSpecificationProperty
  set newValue AudioAndDTMFInputSpecificationProperty {..}
    = AudioAndDTMFInputSpecificationProperty
        {dTMFSpecification = Prelude.pure newValue, ..}
instance Property "StartTimeoutMs" AudioAndDTMFInputSpecificationProperty where
  type PropertyType "StartTimeoutMs" AudioAndDTMFInputSpecificationProperty = Value Prelude.Integer
  set newValue AudioAndDTMFInputSpecificationProperty {..}
    = AudioAndDTMFInputSpecificationProperty
        {startTimeoutMs = newValue, ..}