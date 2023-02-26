module Stratosphere.CloudFront.CachePolicy.HeadersConfigProperty (
        HeadersConfigProperty(..), mkHeadersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeadersConfigProperty
  = HeadersConfigProperty {headerBehavior :: (Value Prelude.Text),
                           headers :: (Prelude.Maybe (ValueList Prelude.Text))}
mkHeadersConfigProperty ::
  Value Prelude.Text -> HeadersConfigProperty
mkHeadersConfigProperty headerBehavior
  = HeadersConfigProperty
      {headerBehavior = headerBehavior, headers = Prelude.Nothing}
instance ToResourceProperties HeadersConfigProperty where
  toResourceProperties HeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CachePolicy.HeadersConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HeaderBehavior" JSON..= headerBehavior]
                           (Prelude.catMaybes [(JSON..=) "Headers" Prelude.<$> headers]))}
instance JSON.ToJSON HeadersConfigProperty where
  toJSON HeadersConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HeaderBehavior" JSON..= headerBehavior]
              (Prelude.catMaybes [(JSON..=) "Headers" Prelude.<$> headers])))
instance Property "HeaderBehavior" HeadersConfigProperty where
  type PropertyType "HeaderBehavior" HeadersConfigProperty = Value Prelude.Text
  set newValue HeadersConfigProperty {..}
    = HeadersConfigProperty {headerBehavior = newValue, ..}
instance Property "Headers" HeadersConfigProperty where
  type PropertyType "Headers" HeadersConfigProperty = ValueList Prelude.Text
  set newValue HeadersConfigProperty {..}
    = HeadersConfigProperty {headers = Prelude.pure newValue, ..}