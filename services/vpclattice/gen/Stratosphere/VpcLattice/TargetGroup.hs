module Stratosphere.VpcLattice.TargetGroup (
        module Exports, TargetGroup(..), mkTargetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.TargetGroup.TargetProperty as Exports
import {-# SOURCE #-} Stratosphere.VpcLattice.TargetGroup.TargetGroupConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TargetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-targetgroup.html>
    TargetGroup {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-targetgroup.html#cfn-vpclattice-targetgroup-config>
                 config :: (Prelude.Maybe TargetGroupConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-targetgroup.html#cfn-vpclattice-targetgroup-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-targetgroup.html#cfn-vpclattice-targetgroup-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-targetgroup.html#cfn-vpclattice-targetgroup-targets>
                 targets :: (Prelude.Maybe [TargetProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-targetgroup.html#cfn-vpclattice-targetgroup-type>
                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroup :: Value Prelude.Text -> TargetGroup
mkTargetGroup type'
  = TargetGroup
      {haddock_workaround_ = (), type' = type', config = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing,
       targets = Prelude.Nothing}
instance ToResourceProperties TargetGroup where
  toResourceProperties TargetGroup {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::TargetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Config" Prelude.<$> config,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Targets" Prelude.<$> targets]))}
instance JSON.ToJSON TargetGroup where
  toJSON TargetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Config" Prelude.<$> config,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Targets" Prelude.<$> targets])))
instance Property "Config" TargetGroup where
  type PropertyType "Config" TargetGroup = TargetGroupConfigProperty
  set newValue TargetGroup {..}
    = TargetGroup {config = Prelude.pure newValue, ..}
instance Property "Name" TargetGroup where
  type PropertyType "Name" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {name = Prelude.pure newValue, ..}
instance Property "Tags" TargetGroup where
  type PropertyType "Tags" TargetGroup = [Tag]
  set newValue TargetGroup {..}
    = TargetGroup {tags = Prelude.pure newValue, ..}
instance Property "Targets" TargetGroup where
  type PropertyType "Targets" TargetGroup = [TargetProperty]
  set newValue TargetGroup {..}
    = TargetGroup {targets = Prelude.pure newValue, ..}
instance Property "Type" TargetGroup where
  type PropertyType "Type" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..} = TargetGroup {type' = newValue, ..}