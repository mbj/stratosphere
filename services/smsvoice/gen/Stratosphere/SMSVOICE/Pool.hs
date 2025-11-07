module Stratosphere.SMSVOICE.Pool (
        module Exports, Pool(..), mkPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SMSVOICE.Pool.MandatoryKeywordsProperty as Exports
import {-# SOURCE #-} Stratosphere.SMSVOICE.Pool.OptionalKeywordProperty as Exports
import {-# SOURCE #-} Stratosphere.SMSVOICE.Pool.TwoWayProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Pool
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html>
    Pool {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-deletionprotectionenabled>
          deletionProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-mandatorykeywords>
          mandatoryKeywords :: MandatoryKeywordsProperty,
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-optoutlistname>
          optOutListName :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-optionalkeywords>
          optionalKeywords :: (Prelude.Maybe [OptionalKeywordProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-originationidentities>
          originationIdentities :: (ValueList Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-selfmanagedoptoutsenabled>
          selfManagedOptOutsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-sharedroutesenabled>
          sharedRoutesEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-pool.html#cfn-smsvoice-pool-twoway>
          twoWay :: (Prelude.Maybe TwoWayProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPool ::
  MandatoryKeywordsProperty -> ValueList Prelude.Text -> Pool
mkPool mandatoryKeywords originationIdentities
  = Pool
      {haddock_workaround_ = (), mandatoryKeywords = mandatoryKeywords,
       originationIdentities = originationIdentities,
       deletionProtectionEnabled = Prelude.Nothing,
       optOutListName = Prelude.Nothing,
       optionalKeywords = Prelude.Nothing,
       selfManagedOptOutsEnabled = Prelude.Nothing,
       sharedRoutesEnabled = Prelude.Nothing, tags = Prelude.Nothing,
       twoWay = Prelude.Nothing}
instance ToResourceProperties Pool where
  toResourceProperties Pool {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::Pool", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MandatoryKeywords" JSON..= mandatoryKeywords,
                            "OriginationIdentities" JSON..= originationIdentities]
                           (Prelude.catMaybes
                              [(JSON..=) "DeletionProtectionEnabled"
                                 Prelude.<$> deletionProtectionEnabled,
                               (JSON..=) "OptOutListName" Prelude.<$> optOutListName,
                               (JSON..=) "OptionalKeywords" Prelude.<$> optionalKeywords,
                               (JSON..=) "SelfManagedOptOutsEnabled"
                                 Prelude.<$> selfManagedOptOutsEnabled,
                               (JSON..=) "SharedRoutesEnabled" Prelude.<$> sharedRoutesEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TwoWay" Prelude.<$> twoWay]))}
instance JSON.ToJSON Pool where
  toJSON Pool {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MandatoryKeywords" JSON..= mandatoryKeywords,
               "OriginationIdentities" JSON..= originationIdentities]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtectionEnabled"
                    Prelude.<$> deletionProtectionEnabled,
                  (JSON..=) "OptOutListName" Prelude.<$> optOutListName,
                  (JSON..=) "OptionalKeywords" Prelude.<$> optionalKeywords,
                  (JSON..=) "SelfManagedOptOutsEnabled"
                    Prelude.<$> selfManagedOptOutsEnabled,
                  (JSON..=) "SharedRoutesEnabled" Prelude.<$> sharedRoutesEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TwoWay" Prelude.<$> twoWay])))
instance Property "DeletionProtectionEnabled" Pool where
  type PropertyType "DeletionProtectionEnabled" Pool = Value Prelude.Bool
  set newValue Pool {..}
    = Pool {deletionProtectionEnabled = Prelude.pure newValue, ..}
instance Property "MandatoryKeywords" Pool where
  type PropertyType "MandatoryKeywords" Pool = MandatoryKeywordsProperty
  set newValue Pool {..} = Pool {mandatoryKeywords = newValue, ..}
instance Property "OptOutListName" Pool where
  type PropertyType "OptOutListName" Pool = Value Prelude.Text
  set newValue Pool {..}
    = Pool {optOutListName = Prelude.pure newValue, ..}
instance Property "OptionalKeywords" Pool where
  type PropertyType "OptionalKeywords" Pool = [OptionalKeywordProperty]
  set newValue Pool {..}
    = Pool {optionalKeywords = Prelude.pure newValue, ..}
instance Property "OriginationIdentities" Pool where
  type PropertyType "OriginationIdentities" Pool = ValueList Prelude.Text
  set newValue Pool {..}
    = Pool {originationIdentities = newValue, ..}
instance Property "SelfManagedOptOutsEnabled" Pool where
  type PropertyType "SelfManagedOptOutsEnabled" Pool = Value Prelude.Bool
  set newValue Pool {..}
    = Pool {selfManagedOptOutsEnabled = Prelude.pure newValue, ..}
instance Property "SharedRoutesEnabled" Pool where
  type PropertyType "SharedRoutesEnabled" Pool = Value Prelude.Bool
  set newValue Pool {..}
    = Pool {sharedRoutesEnabled = Prelude.pure newValue, ..}
instance Property "Tags" Pool where
  type PropertyType "Tags" Pool = [Tag]
  set newValue Pool {..} = Pool {tags = Prelude.pure newValue, ..}
instance Property "TwoWay" Pool where
  type PropertyType "TwoWay" Pool = TwoWayProperty
  set newValue Pool {..} = Pool {twoWay = Prelude.pure newValue, ..}