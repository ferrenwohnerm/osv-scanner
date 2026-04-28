module github.com/google/osv-scanner

go 1.21

require (
	github.com/BurntSushi/toml v1.3.2
	github.com/CycloneDX/cyclonedx-go v0.7.2
	github.com/andygrunwald/go-jira v1.16.0
	github.com/google/go-cmp v0.6.0
	github.com/google/osv-scalibr v0.0.0-20240301000000-000000000000
	github.com/imdario/mergo v0.3.16
	github.com/jedib0t/go-pretty/v6 v6.5.4
	github.com/ossf/osv-schema/bindings/go v0.0.0-20231208174219-0b4a5b3f5c33
	github.com/package-url/packageurl-go v0.1.2
	github.com/spdx/tools-golang v0.5.3
	github.com/urfave/cli/v2 v2.27.1
	golang.org/x/exp v0.0.0-20240103183307-be819d1f06fc
	golang.org/x/vuln v1.0.4
	gopkg.in/yaml.v3 v3.0.1
)

require (
	github.com/anchore/go-struct-converter v0.0.0-20230627203149-c72ef8859ca9 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.3 // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/golang-jwt/jwt/v4 v4.5.0 // indirect
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/mattn/go-runewidth v0.0.15 // indirect
	github.com/rivo/uniseg v0.4.4 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/trivago/tgo v1.0.7 // indirect
	github.com/xrash/smetrics v0.0.0-20231213231151-1d8dd44e695e // indirect
	golang.org/x/mod v0.14.0 // indirect
	golang.org/x/net v0.20.0 // indirect
	golang.org/x/sync v0.6.0 // indirect
	golang.org/x/sys v0.16.0 // indirect
	golang.org/x/tools v0.17.0 // indirect
)

// Personal fork: bumping golang.org/x/net to address CVE-2023-44487 (HTTP/2 rapid reset)
// See: https://pkg.go.dev/vuln/GO-2023-2102
replace golang.org/x/net => golang.org/x/net v0.21.0

// Personal fork: also bumping golang.org/x/sys to pick up the latest security
// and compatibility fixes for Linux/macOS. Noticed v0.16.0 had a minor issue
// with file descriptor handling on darwin.
// See: https://pkg.go.dev/golang.org/x/sys
replace golang.org/x/sys => golang.org/x/sys v0.17.0

// Personal fork: bumping golang.org/x/mod to v0.15.0 for improved module graph
// pruning behavior noticed when scanning projects with large dependency trees.
replace golang.org/x/mod => golang.org/x/mod v0.15.0

// Personal fork: bumping golang.org/x/tools to v0.18.0 to stay in sync with
// the golang.org/x/mod upgrade above; the two packages are typically released
// together and mismatched versions can cause subtle build issues.
replace golang.org/x/tools => golang.org/x/tools v0.18.0

// Personal fork: bumping golang.org/x/sync to v0.7.0 to pick up a fix for
// errgroup.WithContext where cancellation could be delayed under high goroutine
// concurrency. Observed this intermittently when scanning large monorepos.
// See: https://pkg.go.dev/golang.org/x/sync
replace golang.org/x/sync => golang.org/x/sync v0.7.0

// Personal fork: bumping golang.org/x/exp to pick up improvements to
// slices/maps helpers that I use in my local experiments branching off this repo.
// The 20240103 snapshot was missing a couple of slice utility functions I wanted.
replace golang.org/x/exp => golang.org/x/exp v0.0.0-20240213143201-ec583247a57a
