module Stratosphere.DataBrew.Dataset.DatetimeOptionsProperty (
        DatetimeOptionsProperty(..), mkDatetimeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatetimeOptionsProperty
  = DatetimeOptionsProperty {format :: (Value Prelude.Text),
                             localeCode :: (Prelude.Maybe (Value Prelude.Text)),
                             timezoneOffset :: (Prelude.Maybe (Value Prelude.Text))}
mkDatetimeOptionsProperty ::
  Value Prelude.Text -> DatetimeOptionsProperty
mkDatetimeOptionsProperty format
  = DatetimeOptionsProperty
      {format = format, localeCode = Prelude.Nothing,
       timezoneOffset = Prelude.Nothing}
instance ToResourceProperties DatetimeOptionsProperty where
  toResourceProperties DatetimeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.DatetimeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Format" JSON..= format]
                           (Prelude.catMaybes
                              [(JSON..=) "LocaleCode" Prelude.<$> localeCode,
                               (JSON..=) "TimezoneOffset" Prelude.<$> timezoneOffset]))}
instance JSON.ToJSON DatetimeOptionsProperty where
  toJSON DatetimeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Format" JSON..= format]
              (Prelude.catMaybes
                 [(JSON..=) "LocaleCode" Prelude.<$> localeCode,
                  (JSON..=) "TimezoneOffset" Prelude.<$> timezoneOffset])))
instance Property "Format" DatetimeOptionsProperty where
  type PropertyType "Format" DatetimeOptionsProperty = Value Prelude.Text
  set newValue DatetimeOptionsProperty {..}
    = DatetimeOptionsProperty {format = newValue, ..}
instance Property "LocaleCode" DatetimeOptionsProperty where
  type PropertyType "LocaleCode" DatetimeOptionsProperty = Value Prelude.Text
  set newValue DatetimeOptionsProperty {..}
    = DatetimeOptionsProperty {localeCode = Prelude.pure newValue, ..}
instance Property "TimezoneOffset" DatetimeOptionsProperty where
  type PropertyType "TimezoneOffset" DatetimeOptionsProperty = Value Prelude.Text
  set newValue DatetimeOptionsProperty {..}
    = DatetimeOptionsProperty
        {timezoneOffset = Prelude.pure newValue, ..}