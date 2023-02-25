module Stratosphere.CloudFront.CachePolicy.QueryStringsConfigProperty (
        QueryStringsConfigProperty(..), mkQueryStringsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryStringsConfigProperty
  = QueryStringsConfigProperty {queryStringBehavior :: (Value Prelude.Text),
                                queryStrings :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkQueryStringsConfigProperty ::
  Value Prelude.Text -> QueryStringsConfigProperty
mkQueryStringsConfigProperty queryStringBehavior
  = QueryStringsConfigProperty
      {queryStringBehavior = queryStringBehavior,
       queryStrings = Prelude.Nothing}
instance ToResourceProperties QueryStringsConfigProperty where
  toResourceProperties QueryStringsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CachePolicy.QueryStringsConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryStringBehavior" JSON..= queryStringBehavior]
                           (Prelude.catMaybes
                              [(JSON..=) "QueryStrings" Prelude.<$> queryStrings]))}
instance JSON.ToJSON QueryStringsConfigProperty where
  toJSON QueryStringsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryStringBehavior" JSON..= queryStringBehavior]
              (Prelude.catMaybes
                 [(JSON..=) "QueryStrings" Prelude.<$> queryStrings])))
instance Property "QueryStringBehavior" QueryStringsConfigProperty where
  type PropertyType "QueryStringBehavior" QueryStringsConfigProperty = Value Prelude.Text
  set newValue QueryStringsConfigProperty {..}
    = QueryStringsConfigProperty {queryStringBehavior = newValue, ..}
instance Property "QueryStrings" QueryStringsConfigProperty where
  type PropertyType "QueryStrings" QueryStringsConfigProperty = ValueList (Value Prelude.Text)
  set newValue QueryStringsConfigProperty {..}
    = QueryStringsConfigProperty
        {queryStrings = Prelude.pure newValue, ..}