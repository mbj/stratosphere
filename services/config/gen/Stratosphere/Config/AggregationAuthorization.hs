module Stratosphere.Config.AggregationAuthorization (
        AggregationAuthorization(..), mkAggregationAuthorization
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AggregationAuthorization
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html>
    AggregationAuthorization {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedaccountid>
                              authorizedAccountId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedawsregion>
                              authorizedAwsRegion :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregationAuthorization ::
  Value Prelude.Text
  -> Value Prelude.Text -> AggregationAuthorization
mkAggregationAuthorization authorizedAccountId authorizedAwsRegion
  = AggregationAuthorization
      {haddock_workaround_ = (),
       authorizedAccountId = authorizedAccountId,
       authorizedAwsRegion = authorizedAwsRegion, tags = Prelude.Nothing}
instance ToResourceProperties AggregationAuthorization where
  toResourceProperties AggregationAuthorization {..}
    = ResourceProperties
        {awsType = "AWS::Config::AggregationAuthorization",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizedAccountId" JSON..= authorizedAccountId,
                            "AuthorizedAwsRegion" JSON..= authorizedAwsRegion]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AggregationAuthorization where
  toJSON AggregationAuthorization {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizedAccountId" JSON..= authorizedAccountId,
               "AuthorizedAwsRegion" JSON..= authorizedAwsRegion]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AuthorizedAccountId" AggregationAuthorization where
  type PropertyType "AuthorizedAccountId" AggregationAuthorization = Value Prelude.Text
  set newValue AggregationAuthorization {..}
    = AggregationAuthorization {authorizedAccountId = newValue, ..}
instance Property "AuthorizedAwsRegion" AggregationAuthorization where
  type PropertyType "AuthorizedAwsRegion" AggregationAuthorization = Value Prelude.Text
  set newValue AggregationAuthorization {..}
    = AggregationAuthorization {authorizedAwsRegion = newValue, ..}
instance Property "Tags" AggregationAuthorization where
  type PropertyType "Tags" AggregationAuthorization = [Tag]
  set newValue AggregationAuthorization {..}
    = AggregationAuthorization {tags = Prelude.pure newValue, ..}