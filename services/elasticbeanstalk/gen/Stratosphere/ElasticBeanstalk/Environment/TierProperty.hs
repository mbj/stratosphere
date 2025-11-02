module Stratosphere.ElasticBeanstalk.Environment.TierProperty (
        TierProperty(..), mkTierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-tier.html>
    TierProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-tier.html#cfn-elasticbeanstalk-environment-tier-name>
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-tier.html#cfn-elasticbeanstalk-environment-tier-type>
                  type' :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-environment-tier.html#cfn-elasticbeanstalk-environment-tier-version>
                  version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTierProperty :: TierProperty
mkTierProperty
  = TierProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       type' = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties TierProperty where
  toResourceProperties TierProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Environment.Tier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON TierProperty where
  toJSON TierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Name" TierProperty where
  type PropertyType "Name" TierProperty = Value Prelude.Text
  set newValue TierProperty {..}
    = TierProperty {name = Prelude.pure newValue, ..}
instance Property "Type" TierProperty where
  type PropertyType "Type" TierProperty = Value Prelude.Text
  set newValue TierProperty {..}
    = TierProperty {type' = Prelude.pure newValue, ..}
instance Property "Version" TierProperty where
  type PropertyType "Version" TierProperty = Value Prelude.Text
  set newValue TierProperty {..}
    = TierProperty {version = Prelude.pure newValue, ..}