module Stratosphere.CloudFront.ResponseHeadersPolicy.XSSProtectionProperty (
        XSSProtectionProperty(..), mkXSSProtectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data XSSProtectionProperty
  = XSSProtectionProperty {modeBlock :: (Prelude.Maybe (Value Prelude.Bool)),
                           override :: (Value Prelude.Bool),
                           protection :: (Value Prelude.Bool),
                           reportUri :: (Prelude.Maybe (Value Prelude.Text))}
mkXSSProtectionProperty ::
  Value Prelude.Bool -> Value Prelude.Bool -> XSSProtectionProperty
mkXSSProtectionProperty override protection
  = XSSProtectionProperty
      {override = override, protection = protection,
       modeBlock = Prelude.Nothing, reportUri = Prelude.Nothing}
instance ToResourceProperties XSSProtectionProperty where
  toResourceProperties XSSProtectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.XSSProtection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Override" JSON..= override, "Protection" JSON..= protection]
                           (Prelude.catMaybes
                              [(JSON..=) "ModeBlock" Prelude.<$> modeBlock,
                               (JSON..=) "ReportUri" Prelude.<$> reportUri]))}
instance JSON.ToJSON XSSProtectionProperty where
  toJSON XSSProtectionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Override" JSON..= override, "Protection" JSON..= protection]
              (Prelude.catMaybes
                 [(JSON..=) "ModeBlock" Prelude.<$> modeBlock,
                  (JSON..=) "ReportUri" Prelude.<$> reportUri])))
instance Property "ModeBlock" XSSProtectionProperty where
  type PropertyType "ModeBlock" XSSProtectionProperty = Value Prelude.Bool
  set newValue XSSProtectionProperty {..}
    = XSSProtectionProperty {modeBlock = Prelude.pure newValue, ..}
instance Property "Override" XSSProtectionProperty where
  type PropertyType "Override" XSSProtectionProperty = Value Prelude.Bool
  set newValue XSSProtectionProperty {..}
    = XSSProtectionProperty {override = newValue, ..}
instance Property "Protection" XSSProtectionProperty where
  type PropertyType "Protection" XSSProtectionProperty = Value Prelude.Bool
  set newValue XSSProtectionProperty {..}
    = XSSProtectionProperty {protection = newValue, ..}
instance Property "ReportUri" XSSProtectionProperty where
  type PropertyType "ReportUri" XSSProtectionProperty = Value Prelude.Text
  set newValue XSSProtectionProperty {..}
    = XSSProtectionProperty {reportUri = Prelude.pure newValue, ..}