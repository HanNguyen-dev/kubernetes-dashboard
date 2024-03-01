#!/usr/bin/env sh
# Copyright 2017 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if [ "${SKIP_POSTINSTALL}" = true ]; then
  echo Skipping postinstall due to SKIP_POSTINSTALL="${SKIP_POSTINSTALL}"
  exit 0
fi

if [ -z "${DEPENDABOT}" ]; then
  # TODO: When dependabot will support yarn postinstall properly, move following line into .yarnrc.yml.
  cd ../../ && npx husky install modules/web/.husky
  exit $?
fi

exit 0
