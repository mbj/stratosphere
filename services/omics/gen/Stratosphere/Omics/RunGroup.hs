module Stratosphere.Omics.RunGroup (
        RunGroup(..), mkRunGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RunGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-rungroup.html>
    RunGroup {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-rungroup.html#cfn-omics-rungroup-maxcpus>
              maxCpus :: (Prelude.Maybe (Value Prelude.Double)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-rungroup.html#cfn-omics-rungroup-maxduration>
              maxDuration :: (Prelude.Maybe (Value Prelude.Double)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-rungroup.html#cfn-omics-rungroup-maxgpus>
              maxGpus :: (Prelude.Maybe (Value Prelude.Double)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-rungroup.html#cfn-omics-rungroup-maxruns>
              maxRuns :: (Prelude.Maybe (Value Prelude.Double)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-rungroup.html#cfn-omics-rungroup-name>
              name :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-rungroup.html#cfn-omics-rungroup-tags>
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunGroup :: RunGroup
mkRunGroup
  = RunGroup
      {haddock_workaround_ = (), maxCpus = Prelude.Nothing,
       maxDuration = Prelude.Nothing, maxGpus = Prelude.Nothing,
       maxRuns = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RunGroup where
  toResourceProperties RunGroup {..}
    = ResourceProperties
        {awsType = "AWS::Omics::RunGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxCpus" Prelude.<$> maxCpus,
                            (JSON..=) "MaxDuration" Prelude.<$> maxDuration,
                            (JSON..=) "MaxGpus" Prelude.<$> maxGpus,
                            (JSON..=) "MaxRuns" Prelude.<$> maxRuns,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON RunGroup where
  toJSON RunGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxCpus" Prelude.<$> maxCpus,
               (JSON..=) "MaxDuration" Prelude.<$> maxDuration,
               (JSON..=) "MaxGpus" Prelude.<$> maxGpus,
               (JSON..=) "MaxRuns" Prelude.<$> maxRuns,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "MaxCpus" RunGroup where
  type PropertyType "MaxCpus" RunGroup = Value Prelude.Double
  set newValue RunGroup {..}
    = RunGroup {maxCpus = Prelude.pure newValue, ..}
instance Property "MaxDuration" RunGroup where
  type PropertyType "MaxDuration" RunGroup = Value Prelude.Double
  set newValue RunGroup {..}
    = RunGroup {maxDuration = Prelude.pure newValue, ..}
instance Property "MaxGpus" RunGroup where
  type PropertyType "MaxGpus" RunGroup = Value Prelude.Double
  set newValue RunGroup {..}
    = RunGroup {maxGpus = Prelude.pure newValue, ..}
instance Property "MaxRuns" RunGroup where
  type PropertyType "MaxRuns" RunGroup = Value Prelude.Double
  set newValue RunGroup {..}
    = RunGroup {maxRuns = Prelude.pure newValue, ..}
instance Property "Name" RunGroup where
  type PropertyType "Name" RunGroup = Value Prelude.Text
  set newValue RunGroup {..}
    = RunGroup {name = Prelude.pure newValue, ..}
instance Property "Tags" RunGroup where
  type PropertyType "Tags" RunGroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RunGroup {..}
    = RunGroup {tags = Prelude.pure newValue, ..}