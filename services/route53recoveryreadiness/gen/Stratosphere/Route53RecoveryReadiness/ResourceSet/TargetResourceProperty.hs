module Stratosphere.Route53RecoveryReadiness.ResourceSet.TargetResourceProperty (
        module Exports, TargetResourceProperty(..),
        mkTargetResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53RecoveryReadiness.ResourceSet.NLBResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53RecoveryReadiness.ResourceSet.R53ResourceRecordProperty as Exports
import Stratosphere.ResourceProperties
data TargetResourceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html>
    TargetResourceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html#cfn-route53recoveryreadiness-resourceset-targetresource-nlbresource>
                            nLBResource :: (Prelude.Maybe NLBResourceProperty),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html#cfn-route53recoveryreadiness-resourceset-targetresource-r53resource>
                            r53Resource :: (Prelude.Maybe R53ResourceRecordProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetResourceProperty :: TargetResourceProperty
mkTargetResourceProperty
  = TargetResourceProperty
      {nLBResource = Prelude.Nothing, r53Resource = Prelude.Nothing}
instance ToResourceProperties TargetResourceProperty where
  toResourceProperties TargetResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::ResourceSet.TargetResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NLBResource" Prelude.<$> nLBResource,
                            (JSON..=) "R53Resource" Prelude.<$> r53Resource])}
instance JSON.ToJSON TargetResourceProperty where
  toJSON TargetResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NLBResource" Prelude.<$> nLBResource,
               (JSON..=) "R53Resource" Prelude.<$> r53Resource]))
instance Property "NLBResource" TargetResourceProperty where
  type PropertyType "NLBResource" TargetResourceProperty = NLBResourceProperty
  set newValue TargetResourceProperty {..}
    = TargetResourceProperty {nLBResource = Prelude.pure newValue, ..}
instance Property "R53Resource" TargetResourceProperty where
  type PropertyType "R53Resource" TargetResourceProperty = R53ResourceRecordProperty
  set newValue TargetResourceProperty {..}
    = TargetResourceProperty {r53Resource = Prelude.pure newValue, ..}