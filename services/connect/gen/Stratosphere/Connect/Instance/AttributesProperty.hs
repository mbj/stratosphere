module Stratosphere.Connect.Instance.AttributesProperty (
        AttributesProperty(..), mkAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html>
    AttributesProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html#cfn-connect-instance-attributes-autoresolvebestvoices>
                        autoResolveBestVoices :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html#cfn-connect-instance-attributes-contactlens>
                        contactLens :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html#cfn-connect-instance-attributes-contactflowlogs>
                        contactflowLogs :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html#cfn-connect-instance-attributes-earlymedia>
                        earlyMedia :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html#cfn-connect-instance-attributes-inboundcalls>
                        inboundCalls :: (Value Prelude.Bool),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html#cfn-connect-instance-attributes-outboundcalls>
                        outboundCalls :: (Value Prelude.Bool),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instance-attributes.html#cfn-connect-instance-attributes-usecustomttsvoices>
                        useCustomTTSVoices :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributesProperty ::
  Value Prelude.Bool -> Value Prelude.Bool -> AttributesProperty
mkAttributesProperty inboundCalls outboundCalls
  = AttributesProperty
      {haddock_workaround_ = (), inboundCalls = inboundCalls,
       outboundCalls = outboundCalls,
       autoResolveBestVoices = Prelude.Nothing,
       contactLens = Prelude.Nothing, contactflowLogs = Prelude.Nothing,
       earlyMedia = Prelude.Nothing, useCustomTTSVoices = Prelude.Nothing}
instance ToResourceProperties AttributesProperty where
  toResourceProperties AttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Instance.Attributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InboundCalls" JSON..= inboundCalls,
                            "OutboundCalls" JSON..= outboundCalls]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoResolveBestVoices"
                                 Prelude.<$> autoResolveBestVoices,
                               (JSON..=) "ContactLens" Prelude.<$> contactLens,
                               (JSON..=) "ContactflowLogs" Prelude.<$> contactflowLogs,
                               (JSON..=) "EarlyMedia" Prelude.<$> earlyMedia,
                               (JSON..=) "UseCustomTTSVoices" Prelude.<$> useCustomTTSVoices]))}
instance JSON.ToJSON AttributesProperty where
  toJSON AttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InboundCalls" JSON..= inboundCalls,
               "OutboundCalls" JSON..= outboundCalls]
              (Prelude.catMaybes
                 [(JSON..=) "AutoResolveBestVoices"
                    Prelude.<$> autoResolveBestVoices,
                  (JSON..=) "ContactLens" Prelude.<$> contactLens,
                  (JSON..=) "ContactflowLogs" Prelude.<$> contactflowLogs,
                  (JSON..=) "EarlyMedia" Prelude.<$> earlyMedia,
                  (JSON..=) "UseCustomTTSVoices" Prelude.<$> useCustomTTSVoices])))
instance Property "AutoResolveBestVoices" AttributesProperty where
  type PropertyType "AutoResolveBestVoices" AttributesProperty = Value Prelude.Bool
  set newValue AttributesProperty {..}
    = AttributesProperty
        {autoResolveBestVoices = Prelude.pure newValue, ..}
instance Property "ContactLens" AttributesProperty where
  type PropertyType "ContactLens" AttributesProperty = Value Prelude.Bool
  set newValue AttributesProperty {..}
    = AttributesProperty {contactLens = Prelude.pure newValue, ..}
instance Property "ContactflowLogs" AttributesProperty where
  type PropertyType "ContactflowLogs" AttributesProperty = Value Prelude.Bool
  set newValue AttributesProperty {..}
    = AttributesProperty {contactflowLogs = Prelude.pure newValue, ..}
instance Property "EarlyMedia" AttributesProperty where
  type PropertyType "EarlyMedia" AttributesProperty = Value Prelude.Bool
  set newValue AttributesProperty {..}
    = AttributesProperty {earlyMedia = Prelude.pure newValue, ..}
instance Property "InboundCalls" AttributesProperty where
  type PropertyType "InboundCalls" AttributesProperty = Value Prelude.Bool
  set newValue AttributesProperty {..}
    = AttributesProperty {inboundCalls = newValue, ..}
instance Property "OutboundCalls" AttributesProperty where
  type PropertyType "OutboundCalls" AttributesProperty = Value Prelude.Bool
  set newValue AttributesProperty {..}
    = AttributesProperty {outboundCalls = newValue, ..}
instance Property "UseCustomTTSVoices" AttributesProperty where
  type PropertyType "UseCustomTTSVoices" AttributesProperty = Value Prelude.Bool
  set newValue AttributesProperty {..}
    = AttributesProperty
        {useCustomTTSVoices = Prelude.pure newValue, ..}