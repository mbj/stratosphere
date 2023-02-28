module Stratosphere.EC2.ClientVpnEndpoint.ConnectionLogOptionsProperty (
        ConnectionLogOptionsProperty(..), mkConnectionLogOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionLogOptionsProperty
  = ConnectionLogOptionsProperty {cloudwatchLogGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                  cloudwatchLogStream :: (Prelude.Maybe (Value Prelude.Text)),
                                  enabled :: (Value Prelude.Bool)}
mkConnectionLogOptionsProperty ::
  Value Prelude.Bool -> ConnectionLogOptionsProperty
mkConnectionLogOptionsProperty enabled
  = ConnectionLogOptionsProperty
      {enabled = enabled, cloudwatchLogGroup = Prelude.Nothing,
       cloudwatchLogStream = Prelude.Nothing}
instance ToResourceProperties ConnectionLogOptionsProperty where
  toResourceProperties ConnectionLogOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.ConnectionLogOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudwatchLogGroup" Prelude.<$> cloudwatchLogGroup,
                               (JSON..=) "CloudwatchLogStream" Prelude.<$> cloudwatchLogStream]))}
instance JSON.ToJSON ConnectionLogOptionsProperty where
  toJSON ConnectionLogOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "CloudwatchLogGroup" Prelude.<$> cloudwatchLogGroup,
                  (JSON..=) "CloudwatchLogStream" Prelude.<$> cloudwatchLogStream])))
instance Property "CloudwatchLogGroup" ConnectionLogOptionsProperty where
  type PropertyType "CloudwatchLogGroup" ConnectionLogOptionsProperty = Value Prelude.Text
  set newValue ConnectionLogOptionsProperty {..}
    = ConnectionLogOptionsProperty
        {cloudwatchLogGroup = Prelude.pure newValue, ..}
instance Property "CloudwatchLogStream" ConnectionLogOptionsProperty where
  type PropertyType "CloudwatchLogStream" ConnectionLogOptionsProperty = Value Prelude.Text
  set newValue ConnectionLogOptionsProperty {..}
    = ConnectionLogOptionsProperty
        {cloudwatchLogStream = Prelude.pure newValue, ..}
instance Property "Enabled" ConnectionLogOptionsProperty where
  type PropertyType "Enabled" ConnectionLogOptionsProperty = Value Prelude.Bool
  set newValue ConnectionLogOptionsProperty {..}
    = ConnectionLogOptionsProperty {enabled = newValue, ..}