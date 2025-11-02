module Stratosphere.Pinpoint.InAppTemplate.BodyConfigProperty (
        BodyConfigProperty(..), mkBodyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-bodyconfig.html>
    BodyConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-bodyconfig.html#cfn-pinpoint-inapptemplate-bodyconfig-alignment>
                        alignment :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-bodyconfig.html#cfn-pinpoint-inapptemplate-bodyconfig-body>
                        body :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-bodyconfig.html#cfn-pinpoint-inapptemplate-bodyconfig-textcolor>
                        textColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodyConfigProperty :: BodyConfigProperty
mkBodyConfigProperty
  = BodyConfigProperty
      {haddock_workaround_ = (), alignment = Prelude.Nothing,
       body = Prelude.Nothing, textColor = Prelude.Nothing}
instance ToResourceProperties BodyConfigProperty where
  toResourceProperties BodyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate.BodyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON BodyConfigProperty where
  toJSON BodyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Alignment" BodyConfigProperty where
  type PropertyType "Alignment" BodyConfigProperty = Value Prelude.Text
  set newValue BodyConfigProperty {..}
    = BodyConfigProperty {alignment = Prelude.pure newValue, ..}
instance Property "Body" BodyConfigProperty where
  type PropertyType "Body" BodyConfigProperty = Value Prelude.Text
  set newValue BodyConfigProperty {..}
    = BodyConfigProperty {body = Prelude.pure newValue, ..}
instance Property "TextColor" BodyConfigProperty where
  type PropertyType "TextColor" BodyConfigProperty = Value Prelude.Text
  set newValue BodyConfigProperty {..}
    = BodyConfigProperty {textColor = Prelude.pure newValue, ..}