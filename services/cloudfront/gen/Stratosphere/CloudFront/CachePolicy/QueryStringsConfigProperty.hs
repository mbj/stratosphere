module Stratosphere.CloudFront.CachePolicy.QueryStringsConfigProperty (
        QueryStringsConfigProperty(..), mkQueryStringsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryStringsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-querystringsconfig.html>
    QueryStringsConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-querystringsconfig.html#cfn-cloudfront-cachepolicy-querystringsconfig-querystringbehavior>
                                queryStringBehavior :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-querystringsconfig.html#cfn-cloudfront-cachepolicy-querystringsconfig-querystrings>
                                queryStrings :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryStringsConfigProperty ::
  Value Prelude.Text -> QueryStringsConfigProperty
mkQueryStringsConfigProperty queryStringBehavior
  = QueryStringsConfigProperty
      {haddock_workaround_ = (),
       queryStringBehavior = queryStringBehavior,
       queryStrings = Prelude.Nothing}
instance ToResourceProperties QueryStringsConfigProperty where
  toResourceProperties QueryStringsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CachePolicy.QueryStringsConfig",
         supportsTags = Prelude.False,
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
  type PropertyType "QueryStrings" QueryStringsConfigProperty = ValueList Prelude.Text
  set newValue QueryStringsConfigProperty {..}
    = QueryStringsConfigProperty
        {queryStrings = Prelude.pure newValue, ..}