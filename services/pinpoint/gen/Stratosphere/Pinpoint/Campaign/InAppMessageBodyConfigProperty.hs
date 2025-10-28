module Stratosphere.Pinpoint.Campaign.InAppMessageBodyConfigProperty (
        InAppMessageBodyConfigProperty(..),
        mkInAppMessageBodyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InAppMessageBodyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebodyconfig.html>
    InAppMessageBodyConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebodyconfig.html#cfn-pinpoint-campaign-inappmessagebodyconfig-alignment>
                                    alignment :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebodyconfig.html#cfn-pinpoint-campaign-inappmessagebodyconfig-body>
                                    body :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebodyconfig.html#cfn-pinpoint-campaign-inappmessagebodyconfig-textcolor>
                                    textColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInAppMessageBodyConfigProperty :: InAppMessageBodyConfigProperty
mkInAppMessageBodyConfigProperty
  = InAppMessageBodyConfigProperty
      {haddock_workaround_ = (), alignment = Prelude.Nothing,
       body = Prelude.Nothing, textColor = Prelude.Nothing}
instance ToResourceProperties InAppMessageBodyConfigProperty where
  toResourceProperties InAppMessageBodyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.InAppMessageBodyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON InAppMessageBodyConfigProperty where
  toJSON InAppMessageBodyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Alignment" InAppMessageBodyConfigProperty where
  type PropertyType "Alignment" InAppMessageBodyConfigProperty = Value Prelude.Text
  set newValue InAppMessageBodyConfigProperty {..}
    = InAppMessageBodyConfigProperty
        {alignment = Prelude.pure newValue, ..}
instance Property "Body" InAppMessageBodyConfigProperty where
  type PropertyType "Body" InAppMessageBodyConfigProperty = Value Prelude.Text
  set newValue InAppMessageBodyConfigProperty {..}
    = InAppMessageBodyConfigProperty {body = Prelude.pure newValue, ..}
instance Property "TextColor" InAppMessageBodyConfigProperty where
  type PropertyType "TextColor" InAppMessageBodyConfigProperty = Value Prelude.Text
  set newValue InAppMessageBodyConfigProperty {..}
    = InAppMessageBodyConfigProperty
        {textColor = Prelude.pure newValue, ..}