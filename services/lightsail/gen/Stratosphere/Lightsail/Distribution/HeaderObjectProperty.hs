module Stratosphere.Lightsail.Distribution.HeaderObjectProperty (
        HeaderObjectProperty(..), mkHeaderObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderObjectProperty
  = HeaderObjectProperty {headersAllowList :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                          option :: (Prelude.Maybe (Value Prelude.Text))}
mkHeaderObjectProperty :: HeaderObjectProperty
mkHeaderObjectProperty
  = HeaderObjectProperty
      {headersAllowList = Prelude.Nothing, option = Prelude.Nothing}
instance ToResourceProperties HeaderObjectProperty where
  toResourceProperties HeaderObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.HeaderObject",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeadersAllowList" Prelude.<$> headersAllowList,
                            (JSON..=) "Option" Prelude.<$> option])}
instance JSON.ToJSON HeaderObjectProperty where
  toJSON HeaderObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeadersAllowList" Prelude.<$> headersAllowList,
               (JSON..=) "Option" Prelude.<$> option]))
instance Property "HeadersAllowList" HeaderObjectProperty where
  type PropertyType "HeadersAllowList" HeaderObjectProperty = ValueList (Value Prelude.Text)
  set newValue HeaderObjectProperty {..}
    = HeaderObjectProperty
        {headersAllowList = Prelude.pure newValue, ..}
instance Property "Option" HeaderObjectProperty where
  type PropertyType "Option" HeaderObjectProperty = Value Prelude.Text
  set newValue HeaderObjectProperty {..}
    = HeaderObjectProperty {option = Prelude.pure newValue, ..}