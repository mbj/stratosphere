module Stratosphere.MediaConnect.Flow.MediaStreamAttributesProperty (
        module Exports, MediaStreamAttributesProperty(..),
        mkMediaStreamAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.FmtpProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaStreamAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-mediastreamattributes.html>
    MediaStreamAttributesProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-mediastreamattributes.html#cfn-mediaconnect-flow-mediastreamattributes-fmtp>
                                   fmtp :: (Prelude.Maybe FmtpProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-mediastreamattributes.html#cfn-mediaconnect-flow-mediastreamattributes-lang>
                                   lang :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaStreamAttributesProperty :: MediaStreamAttributesProperty
mkMediaStreamAttributesProperty
  = MediaStreamAttributesProperty
      {haddock_workaround_ = (), fmtp = Prelude.Nothing,
       lang = Prelude.Nothing}
instance ToResourceProperties MediaStreamAttributesProperty where
  toResourceProperties MediaStreamAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.MediaStreamAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Fmtp" Prelude.<$> fmtp,
                            (JSON..=) "Lang" Prelude.<$> lang])}
instance JSON.ToJSON MediaStreamAttributesProperty where
  toJSON MediaStreamAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Fmtp" Prelude.<$> fmtp,
               (JSON..=) "Lang" Prelude.<$> lang]))
instance Property "Fmtp" MediaStreamAttributesProperty where
  type PropertyType "Fmtp" MediaStreamAttributesProperty = FmtpProperty
  set newValue MediaStreamAttributesProperty {..}
    = MediaStreamAttributesProperty {fmtp = Prelude.pure newValue, ..}
instance Property "Lang" MediaStreamAttributesProperty where
  type PropertyType "Lang" MediaStreamAttributesProperty = Value Prelude.Text
  set newValue MediaStreamAttributesProperty {..}
    = MediaStreamAttributesProperty {lang = Prelude.pure newValue, ..}